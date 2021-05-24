import 'package:best_flutter_ui_templates/app_theme.dart';
import 'package:flutter/material.dart';
import 'model/appBar.dart';
import 'model/work_it_table.dart';

var listOfData  = [
      {"name":"testprint"},
      {"name":"test2"},
      {"name":"tes3"},
      {"name":"tes3"},
      {"name":"tes3"},
      {"name":"tes3"},
      {"name":"tes3"},
      {"name":"tes3"},
      {"name":"tes3"},
      {"name":"tes3"},
      {"name":"tes3"},
      {"name":"tes3"},
      {"name":"tes3"},
      {"name":"tes3"},
      {"name":"tes3"},
      {"name":"tes3"},
      {"name":"tes3"},
      {"name":"tes3"},
      {"name":"tes3"},
      {"name":"tes3"},
      {"name":"tes3"},
      {"name":"tes3"},
      {"name":"tes3"},
      {"name":"tes3"},
      {"name":"tes3"},
      {"name":"tes3"},
  ];

class MyHomePage extends StatefulWidget {
  
  const MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  
  
  AnimationController animationController;
  bool multiple = true;

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    super.initState();
  }

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 0));
    return true;
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.white,
      body: FutureBuilder<bool>(
        future: getData(),
        builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
          return Container(
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  appBar(),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top:25,bottom: 25),
                        child: Align(
                        alignment: Alignment.topCenter,
                        child:  Column(
                            children: [
                              const Text(
                                "Haftalık Çalışma Saatlerim",
                                style: TextStyle(
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                      ),
                      ),
                      
                    ],
                  ),
                  Container(
                    child:Row(
                       children: <Widget>[
                         IntrinsicWidth(
                           child:Column(
                             mainAxisSize: MainAxisSize.min,
                             crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 400,
                                child: SingleChildScrollView(
                                  scrollDirection:Axis.vertical,
                                  child: SingleChildScrollView(
                                    scrollDirection:Axis.horizontal,
                                    child:datatableFunct(listOfData) ,
                                  ),
                                ),
                                /*child: Column(children: [datatableFunct(listOfData)],),*/
                              )
                            ],
                          ),
                         ),
                         
                       ],
                    )
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    width: MediaQuery.of(context).size.width,
                    child: AspectRatio(
                      aspectRatio: 20 / 5,
                        child: Container(
                          width: MediaQuery.of(context).size.width - 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.red,
                            boxShadow: [
                              BoxShadow(color: Colors.black.withOpacity(0.08), spreadRadius: 5),
                            ],
                          ),
                          
                          child: TextButton(
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              overlayColor: MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                                  if (states.contains(MaterialState.hovered))
                                    return Colors.blue[300].withOpacity(0.5);
                                  if (states.contains(MaterialState.focused) ||
                                      states.contains(MaterialState.pressed))
                                    return Colors.blue[300].withOpacity(0.9);
                                  return null; // Defer to the widget's default.
                                },
                              ),
                            ),
                            onPressed: () { },
                            child: Text('Giriş Saatleri İle İlgili Hata Bildir',style: TextStyle(
                              fontSize: 20,
                            ),)
                          ),
                        ),
                    ),

                  ),
                  Expanded(child: Row(children: <Widget>[
                    
                  ],))
                ],
              ),
            );
        },
      ),
    );
  }
}

class HomeListView extends StatelessWidget {
  const HomeListView(
      {Key key,
      this.callBack,
      this.animationController,
      this.animation})
      : super(key: key);
  final VoidCallback callBack;
  final AnimationController animationController;
  final Animation<dynamic> animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget child) {
        return FadeTransition(
          opacity: animation,
          child: Transform(
            transform: Matrix4.translationValues(
                0.0, 50 * (1.0 - animation.value), 0.0),
            child: AspectRatio(
              aspectRatio: 1.5,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: <Widget>[
                    
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        splashColor: Colors.grey.withOpacity(0.2),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(4.0)),
                        onTap: () {
                          callBack();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
