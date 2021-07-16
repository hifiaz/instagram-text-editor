import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:text_editor/src/text_style_model.dart';

class TextWeight extends StatelessWidget {
  final Widget? bold;
  final Widget? normal;

  TextWeight({this.bold, this.normal});

  void _onChangeWeightWidget(TextStyleModel textStyleModel) {
    switch (textStyleModel.textWeight) {
      case FontWeight.w400:
        textStyleModel.editFontWeight(FontWeight.w700);
        break;
      default:
        textStyleModel.editFontWeight(FontWeight.w400);
    }
  }

  Widget _mapTextWeightToWidget(FontWeight weight) {
    switch (weight) {
      case FontWeight.w700:
        return bold ??
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Icon(Icons.format_bold, color: Colors.white),
            );
      default:
        return normal ?? Icon(Icons.format_bold, color: Colors.white);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<TextStyleModel>(
      builder: (context, model, child) => GestureDetector(
        onTapUp: (_) => _onChangeWeightWidget(model),
        child: _mapTextWeightToWidget(model.textWeight!),
      ),
    );
  }
}
