import 'package:flutter/material.dart';

class GSYInputWidget extends StatefulWidget {
  final bool obscureText;
  final String hintText;
  final IconData iconData;
  final ValueChanged<String> onChanged;
  final TextStyle textStyle;
  final TextEditingController controller;

  GSYInputWidget({Key key, this.obscureText, this.hintText, this.iconData, this.onChanged, this.textStyle, this.controller}) : super(key : key);

  @override
  _GSYInputWidgetState createState() => _GSYInputWidgetState();
}

class _GSYInputWidgetState extends State<GSYInputWidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: widget.obscureText,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        hintText: widget.hintText,
        icon: widget.iconData == null ? null : Icon(widget.iconData),
      ),
    );
  }
}
