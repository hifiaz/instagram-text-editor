import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:text_editor/src/text_style_model.dart';

enum TextBackgroundColorStatus { enable, exchange, none }

class TextBackgroundColor extends StatelessWidget {
  void _onChangeBackgroundWidget(TextStyleModel textStyleModel) {
    switch (textStyleModel.textBackground) {
      case 0:
        textStyleModel.editFontBackground(Colors.black);
        break;
      default:
        textStyleModel.editFontBackground(Colors.transparent);
    }
  }

  Widget _mapTextBackgroundToWidget(int background) {
    switch (background) {
      case 0:
        return Icon(
          Icons.tonality,
          color: Colors.white,
        );
      default:
        return Icon(
          Icons.brightness_1,
          color: Colors.black,
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
  // @override
  // Widget build(BuildContext context) {
  //   return GestureDetector(
  //     onTap: () {
  //       setState(() {
  //         switch (_status) {
  //           case TextBackgroundColorStatus.none:
  //             _status = TextBackgroundColorStatus.enable;
  //             break;
  //           case TextBackgroundColorStatus.enable:
  //             _status = TextBackgroundColorStatus.exchange;
  //             break;
  //           default:
  //             _status = TextBackgroundColorStatus.none;
  //         }
  //       });
  //     },
  //     child: Container(
  //       width: 25,
  //       height: 25,
  //       decoration: BoxDecoration(
  //         color:
  //             _status == TextBackgroundColorStatus.none ? null : Colors.white,
  //         borderRadius: BorderRadius.circular(5),
  //         border: Border.all(color: Colors.white, width: 1),
  //       ),
  //       child: Icon(
  //         Icons.format_bold,
  //         size: 20,
  //         color: _status == TextBackgroundColorStatus.none
  //             ? Colors.white
  //             : Colors.black,
  //       ),
  //     ),
  //   );
  // }
}
