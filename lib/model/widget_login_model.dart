import 'package:flutter/material.dart';

class WidgetModelLogin {
  //model to AppBar Widget
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

  Widget logo() {
    return Center(
      child: Image.asset(
        'images/logo.jpg',
        height: 200,
        width: 200,
      ),
    );
  }

  Widget iconButtonLogin({onPressed, color, child}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 200,
        height: 50,
        child: RaisedButton(
          color: Colors.purple.withAlpha(850),
          disabledColor: Colors.grey.withAlpha(300),
          onPressed: onPressed,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
          ),
          child: child,
          textColor: Colors.white,
        ),
      ),
    );
  }

  textTaskFormEmail({
    String labelText,
    onChanged,
    String Function() errorText,
    hintText,
    suffixIcon,
    prefixIcon,
    obscureText,
    enabled,
  }) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextFormField(
        enabled: enabled,
        obscureText: obscureText,
        onChanged: onChanged,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          hintText: hintText,
          border: OutlineInputBorder(),
          labelText: labelText,
          errorText: errorText == null ? null : errorText(),
        ),
      ),
    );
  }

  textTaskFormPassword({
    String labelText,
    onChanged,
    String Function() errorText,
    hintText,
    suffixIcon,
    prefixIcon,
    obscureText,
    enabled,
  }) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextFormField(
        enabled: enabled,
        obscureText: obscureText,
        onChanged: onChanged,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          hintText: hintText,
          border: OutlineInputBorder(),
          labelText: labelText,
          errorText: errorText == null ? null : errorText(),
        ),
      ),
    );
  }
}
