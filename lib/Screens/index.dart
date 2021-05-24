
import 'package:flutter/material.dart';

class index extends StatefulWidget{
  @override 
  State<StatefulWidget> createState()=>_indexState();
}

class _indexState extends State{
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: PreferredSize(
          
          preferredSize: Size.fromHeight(56.0), // here the desired height
          
          child: AppBar(       
        backgroundColor: Color.fromRGBO(25, 78, 127, 1),
        actions: <Widget>[
          Expanded(child: Container(
            padding: EdgeInsets.all(0),
            child: Column(
                children: <Widget>[
                ListTile(
                    title: Text(
                    'Host Follow',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                ),
                ],
            ),
          )),
          Expanded(child: Container(
            child: Column(children: <Widget>[
              
              SizedBox(height: 10.0),
              
              new Align(
                alignment: Alignment(0.9,0),
                
                child: new CircleAvatar(
                  
                  minRadius: 20,
                  maxRadius: 20,
                  child: ClipRRect(
                     borderRadius: new BorderRadius.circular(50),
                     child: GestureDetector(
                onTap: () {
                 print("test");
                },
                child:  CircleAvatar(
                       radius: 20,
                        child: Text("K"),
                       ), 
                ), 
                  ),
                ),
                
                /*child: Column(
                  
                  children: <Widget>[
                  RaisedButton(
                    padding: EdgeInsets.only(top:0),
                    textColor: Colors.black,
                    onPressed: () {},
                      child: Container(
                        child: Column(
                            children: <Widget>[
                                Text("K")
                            ],
                        ),
                      ),
                  // padding: EdgeInsets.only(right: 10),
                    shape: CircleBorder(side: BorderSide(color: Colors.black)),
                  ),
                ],),*/
              ),
              
            ],),
          )),
          
          
        ],
          )
        ),
      
      
    );
  }
}