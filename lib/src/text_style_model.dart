import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TextStyleModel extends ChangeNotifier {
  String text;
  TextStyle? textStyle;
  TextAlign? textAlign;
  FontWeight? textWeight;
  int? textBackground;

  TextStyleModel(this.text,
      {this.textAlign, this.textStyle, this.textWeight, this.textBackground}) {
    textStyle = textStyle ?? TextStyle(fontSize: 10);
    textAlign = textAlign ?? TextAlign.center;
    textWeight = textWeight ?? FontWeight.normal;
    textBackground = 0;
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

  void editFontHeight(double value) {
    this.textStyle = this.textStyle!.copyWith(height: value);
    notifyListeners();
  }

  void editFontWeight(FontWeight value) {
    this.textWeight = value;
    this.textStyle = this.textStyle!.copyWith(fontWeight: value);
    notifyListeners();
  }

  void editFontBackground(Color value) {
    if (value == Colors.transparent) {
      textBackground = 1;
    } else if (value == Colors.black) {
      textBackground = 2;
    } else if (value == Colors.white) {
      textBackground = 3;
    } else if (value == Colors.blue) {
      textBackground = 4;
    } else if (value == Colors.green) {
      textBackground = 5;
    } else if (value == Colors.yellow) {
      textBackground = 6;
    } else if (value == Colors.red) {
      textBackground = 0;
    } else {
      textBackground = 0;
    }
    this.textStyle = this.textStyle!.copyWith(backgroundColor: value);
    notifyListeners();
  }

  void changeFontFamily(String value) {
    this.textStyle = this.textStyle!.copyWith(fontFamily: value);

    notifyListeners();
  }
}
