import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TextStyleModel extends ChangeNotifier {
  String text;
  TextStyle? textStyle;
  TextAlign? textAlign;
  FontWeight? textWeight;

  TextStyleModel(this.text, {this.textAlign, this.textStyle, this.textWeight}) {
    textStyle = textStyle ?? TextStyle(fontSize: 10);
    textAlign = textAlign ?? TextAlign.center;
    textWeight = textWeight ?? FontWeight.normal;
  }

  void editTextAlinment(TextAlign value) {
    this.textAlign = value;

    notifyListeners();
  }

  void editTextColor(Color value) {
    this.textStyle = this.textStyle!.copyWith(color: value);

    notifyListeners();
  }

  void editFontSize(double value) {
    this.textStyle = this.textStyle!.copyWith(fontSize: value);

    notifyListeners();
  }

  void editFontWeight(FontWeight value) {
    this.textWeight = value;
    this.textStyle = this.textStyle!.copyWith(fontWeight: value);
    notifyListeners();
  }

  void changeFontFamily(String value) {
    this.textStyle = this.textStyle!.copyWith(fontFamily: value);

    notifyListeners();
  }
}
