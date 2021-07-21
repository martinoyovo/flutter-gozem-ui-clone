
import 'package:flutter/material.dart';
import 'styles.dart';

inputDecoration({String? text, IconData? prefixIcon, Widget? suffixIcon}) {
  return InputDecoration(
      hintText: text,
      hintStyle: Styles.textStyle.copyWith(color: Colors.grey.shade500),
      focusColor: Styles.accentColor,
      hoverColor: Styles.accentColor,
      prefixIcon: prefixIcon == null ? null : Icon(prefixIcon, color: Styles.accentColor, size: 20,),
      suffixIcon: suffixIcon,
      contentPadding: EdgeInsets.only(top: 15, left: prefixIcon == null ? 15 : 0),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10,),
        borderSide: BorderSide(color: Styles.accentColor, style: BorderStyle.none)
      ),
  );
}