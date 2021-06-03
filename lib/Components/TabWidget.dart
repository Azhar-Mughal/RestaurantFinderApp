import 'dart:ui';

import 'package:flutter/material.dart';

class TabWidget extends StatefulWidget {
  final bool mIsEnable;
  final String mText;
  final Function mOnTap;

  const TabWidget({this.mText, this.mIsEnable, this.mOnTap});

  @override
  _TabWidgetState createState() => _TabWidgetState();
}

class _TabWidgetState extends State<TabWidget> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.mIsEnable ? (){} : widget.mOnTap,
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(widget.mIsEnable ? 8 : 0),
          ),
          primary: widget.mIsEnable ? Colors.blueGrey : Colors.transparent,
          elevation: widget.mIsEnable ? 1.0 : 0),
      child: Text(
        widget.mText,
        style: TextStyle(
          color: widget.mIsEnable ? Colors.white : Colors.blueGrey,
          fontSize: 15,
        ),
      ),
    );
  }
}
