import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetListModel {
  Widget appBarModel(
      {letterSpacing: 2.0,
      fontSize: 16.0,
      textAlign: TextAlign.center,
      actions,
      onPressed}) {
    return Scaffold(
      appBar: AppBar(
        actions: actions,
        elevation: 0.0,
        backgroundColor: Colors.purple.withAlpha(400),
        centerTitle: true,
        title: Text(
          'Task List',
          style: TextStyle(
            letterSpacing: letterSpacing,
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  newItem({
    String labelText,
    onChanged,
    hintText,
    enabled,
  }) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextFormField(
        enabled: enabled,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(),
          labelText: labelText,
        ),
      ),
    );
  }
}
