import 'package:flutter/material.dart';
import 'package:hostfollow/Screens/index.dart';

void main(){
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/" : (context) => index(),
      },
  ));
}