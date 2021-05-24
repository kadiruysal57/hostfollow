import 'package:best_flutter_ui_templates/app_theme.dart';
import 'package:best_flutter_ui_templates/model/appBar.dart';
import 'package:best_flutter_ui_templates/model/daily_list_table.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:intl/intl.dart';

import 'package:flutter/cupertino.dart';

DateTime _selectedDate = DateTime.now();
TextEditingController _textEditingController = TextEditingController();
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
class DailyListPage extends StatefulWidget {
  @override
  _DailyListPage createState() => _DailyListPage();
}

class _DailyListPage extends State<DailyListPage> {
  @override
  void initState() {
    super.initState();
  }
_selectDate(BuildContext context) async {
    DateTime newSelectedDate = await showDatePicker(
        context: context,
        initialDate: _selectedDate != null ? _selectedDate : DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2040),
        builder: (BuildContext context, Widget child) {
          return Theme(
            data: ThemeData.dark().copyWith(
              colorScheme: ColorScheme.dark(
                primary: Colors.green[500],
                onPrimary: Colors.white,
                surface: Colors.green[500],
                onSurface:Colors.white ,
              ),
              dialogBackgroundColor: Colors.blue[500],
              
            ),
            child: child,
          );
        });

    if (newSelectedDate != null) {
      _selectedDate = newSelectedDate;
      _textEditingController
        ..text = DateFormat.yMMMd().format(_selectedDate)
        ..selection = TextSelection.fromPosition(TextPosition(
            offset: _textEditingController.text.length,
            affinity: TextAffinity.upstream));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.nearlyWhite,
      child: SafeArea(
        top: false,
        child: Scaffold(
          backgroundColor: AppTheme.nearlyWhite,
          body: FutureBuilder<bool>(
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
                        padding: EdgeInsets.all(25),
                        child: Align(
                        alignment: Alignment.topCenter,
                        child:  Column(
                            children: [
                              const Text(
                                "Günlük Program",
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
                  Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            width: MediaQuery.of(context).size.width / 3,
                            child: AspectRatio(
                              aspectRatio: 3 / 1,
                                child: Container(
                                  width: MediaQuery.of(context).size.width - 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.blue,
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
                                    child:Row(
                                      children: <Widget>[
                                        Icon(Icons.bus_alert,size: 15,),
                                        Text('  Rota Belirle',style: TextStyle(
                                          fontSize: 13,
                                          ),
                                        )
                                      ],
                                    )
                                    
                                  ),
                                ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            width: MediaQuery.of(context).size.width / 3,
                            child: AspectRatio(
                              aspectRatio: 3 / 1,
                                child: Container(
                                  width: MediaQuery.of(context).size.width - 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.red,
                                  ),
                                  
                                  child: TextButton(
                                    style: ButtonStyle(
                                      
                                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                      overlayColor: MaterialStateProperty.resolveWith<Color>(
                                        (Set<MaterialState> states) {
                                          if (states.contains(MaterialState.hovered))
                                            return Colors.red[300].withOpacity(0.5);
                                          if (states.contains(MaterialState.focused) ||
                                              states.contains(MaterialState.pressed))
                                            return Colors.red[300].withOpacity(0.9);
                                            
                                          return null; // Defer to the widget's default.
                                        },
                                      ),
                                    ),
                                    onPressed: () { },
                                    child:Row(
                                      children: <Widget>[
                                        Icon(Icons.picture_as_pdf_sharp,size: 15,),
                                        Text('  PDF Çıktı Al',style: TextStyle(
                                          fontSize: 13,
                                          ),
                                        )
                                      ],
                                    )
                                    
                                  ),
                                ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            width: MediaQuery.of(context).size.width / 3,
                            child: AspectRatio(
                              aspectRatio: 3 / 1,
                                child: Container(
                                  width: MediaQuery.of(context).size.width - 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.green,
                                  ),
                                  
                                  child: TextButton(
                                    style: ButtonStyle(
                                      
                                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                      overlayColor: MaterialStateProperty.resolveWith<Color>(
                                        (Set<MaterialState> states) {
                                          if (states.contains(MaterialState.hovered))
                                            return Colors.green[300].withOpacity(0.5);
                                          if (states.contains(MaterialState.focused) ||
                                              states.contains(MaterialState.pressed))
                                            return Colors.green[300].withOpacity(0.9);
                                            
                                          return null; // Defer to the widget's default.
                                        },
                                      ),
                                    ),
                                    onPressed: () { },
                                    child:Row(
                                      children: <Widget>[
                                        Icon(Icons.list,size: 15,),
                                        
                                        Text('  Excell',style: TextStyle(
                                          fontSize: 12,
                                          ),
                                        )
                                      ],
                                    )
                                    
                                  ),
                                ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child:Column(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                              "Tarih Seçiniz",
                              style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),
                            ),
                        ),
                        Container(
                          child:Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              TextField(
                                focusNode: AlwaysDisabledFocusNode(),
                                controller: _textEditingController,
                                
                                onTap: () {
                                  _selectDate(context);
                                }
                              ),

                            ],
                          ),
                        ),
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(15),
                    
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
                                    child:daily_list_tableFunc(listOfData) ,
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
                  Expanded(child: Row(children: <Widget>[
                    
                  ],))
                ],
              ),
            );
        },
      ),
        ),
      ),
    );
  }
}
class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}