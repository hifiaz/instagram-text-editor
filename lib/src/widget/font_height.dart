import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:text_editor/src/text_style_model.dart';

class FontHeight extends StatelessWidget {
  final double minFontHeight;
  final double maxFontHeight;

  FontHeight({required this.minFontHeight, required this.maxFontHeight});

  @override
  Widget build(BuildContext context) {
    return Consumer<TextStyleModel>(
      builder: (context, model, child) => RotatedBox(
        quarterTurns: 2,
        child: Slider(
          value: model.textStyle?.height ?? minFontHeight,
          min: minFontHeight,
          max: maxFontHeight,
          divisions: ((maxFontHeight - minFontHeight) * 10).toInt(),
          activeColor: Colors.white,
          inactiveColor: Colors.white,
          onChanged: (double value) => model.editFontHeight(value),
        ),
      ),
    );
  }
}
