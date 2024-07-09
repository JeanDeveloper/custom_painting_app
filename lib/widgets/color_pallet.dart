import 'package:flutter/material.dart';
import 'package:painting_app/providers/color_provider.dart';
import 'package:painting_app/utils/constants.dart';
import 'package:provider/provider.dart';

class ColorPallet extends StatelessWidget {

  const ColorPallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: Constants.colors.map((color) {
            return GestureDetector(
              onTap: () {
                Provider.of<ColorProvider>(context, listen: false).changeColor(color);
              },
              child: Container(
                width: 40,
                height: 40,
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: color,
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}