// ignore_for_file: lines_longer_than_80_chars

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kartal/kartal.dart';
import 'package:prolingo_app/product/constants/index.dart';

class ColorfulText extends StatelessWidget {
  const ColorfulText({required this.colorizeColors, required this.text, super.key});

  final List<Color> colorizeColors;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.sized.dynamicWidth(120),
      child: Center(
        child: AnimatedTextKit(
          repeatForever: true,
          animatedTexts: <AnimatedText>[
            ColorizeAnimatedText(
              StringConstants.companyName,
              textStyle: GoogleFonts.bebasNeue(
                fontSize: 50,
              ),
              colors: colorizeColors,
            ),
          ],
          onTap: () {},
        ),
      ),
    );
  }
}
