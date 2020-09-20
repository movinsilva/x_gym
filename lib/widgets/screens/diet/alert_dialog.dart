import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectDietAlertDialog extends StatelessWidget {
  // contain the title to be shown
  final title;
  // contain the contain widget
  // for the body of the alert dialog
  final content;
  // actions for the popup
  final actions;

  const SelectDietAlertDialog({Key key, this.title, this.content, this.actions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: title,
      content: content,
      actions: actions,
    );
  }
}
