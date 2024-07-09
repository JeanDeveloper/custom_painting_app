import 'package:flutter/material.dart';
import 'package:painting_app/widgets/color_pallet.dart';
import 'package:painting_app/widgets/eraser_button.dart';
import 'package:painting_app/widgets/paint_area_widget.dart';
import 'package:painting_app/widgets/size_buttons.dart';

class PaintingScreen extends StatelessWidget {

  final String imagePath;

  const PaintingScreen({
    super.key, 
    required this.imagePath
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Painting Game"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    const PaintAreaWidget(),
                    IgnorePointer(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(imagePath),
                        ],
                      ),
                    ),
                  ],
                )
              ),
              const ColorPallet(),
              const EraserButton(),
              const SizeButtons(),
            ],
          )
        ],
      ),
    );
  }
}