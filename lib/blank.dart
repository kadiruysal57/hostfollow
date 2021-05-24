import 'package:best_flutter_ui_templates/app_theme.dart';
import 'package:best_flutter_ui_templates/model/appBar.dart';
import 'package:flutter/material.dart';

class FeedbackScreen extends StatefulWidget {
  @override
  _FeedbackScreen createState() => _FeedbackScreen();
}

class _FeedbackScreen extends State<FeedbackScreen> {
  @override
  void initState() {
    super.initState();
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
