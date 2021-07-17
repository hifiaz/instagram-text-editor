import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:text_editor/src/text_style_model.dart';

enum TextBackgroundColorStatus { enable, exchange, none }

class TextBackgroundColor extends StatelessWidget {
  void _onChangeBackgroundWidget(TextStyleModel textStyleModel) {
    switch (textStyleModel.textBackground) {
      case 1:
        textStyleModel.editFontBackground(Colors.black);
        break;
      case 2:
        textStyleModel.editFontBackground(Colors.white);
        break;
      case 3:
        textStyleModel.editFontBackground(Colors.blue);
        break;
      case 4:
        textStyleModel.editFontBackground(Colors.green);
        break;
      case 5:
        textStyleModel.editFontBackground(Colors.yellow);
        break;
      case 6:
        textStyleModel.editFontBackground(Colors.red);
        break;
      default:
        textStyleModel.editFontBackground(Colors.transparent);
    }
  }

  Widget _mapTextBackgroundToWidget(int background) {
    switch (background) {
      case 1:
        return Icon(
          Icons.tonality,
          color: Colors.black,
        );
      case 2:
        return Icon(
          Icons.tonality,
          color: Colors.white,
        );
      case 3:
        return Icon(
          Icons.tonality,
          color: Colors.blue,
        );
      case 4:
        return Icon(
          Icons.tonality,
          color: Colors.green,
        );
      case 5:
        return Icon(
          Icons.tonality,
          color: Colors.yellow,
        );
      case 6:
        return Icon(
          Icons.tonality,
          color: Colors.red,
        );
      default:
        return Icon(
          Icons.brightness_1,
          color: Colors.white,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<TextStyleModel>(
      builder: (context, model, child) => GestureDetector(
        onTapUp: (_) => _onChangeBackgroundWidget(model),
        child: _mapTextBackgroundToWidget(model.textBackground!),
      ),
    );
  }
}
