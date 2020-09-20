import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectDietAlertDialog extends StatelessWidget {
  // contain the title to be shown
  final title;
  // contain the contain widget
  // for the body of the alert dialog
  final content;

  const SelectDietAlertDialog({Key key, this.title, this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(title),
      content: content,
      actions: <Widget>[
        new FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          textColor: Theme.of(context).primaryColor,
          child: const Text('Okay, got it!'),
        ),
      ],
    );;
  }
}
