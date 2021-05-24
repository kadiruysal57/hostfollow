 import 'package:best_flutter_ui_templates/app_theme.dart';
import 'package:flutter/material.dart';

 Widget appBar() {
    return SizedBox(
      
      height: AppBar().preferredSize.height,
      child:Container(
        color:Colors.blue,
        child:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 8),
            child: Container(
              width: AppBar().preferredSize.height - 40,
              height: AppBar().preferredSize.height - 20,
            ),
          ),
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  'HOST FOLLOW',
                  style: TextStyle(
                    fontSize: 22,
                    color: AppTheme.darkerText,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
        ],
      )
      ),
    );
  }