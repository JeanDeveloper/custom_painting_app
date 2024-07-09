import 'package:flutter/material.dart';
import 'package:painting_app/providers/color_provider.dart';
import 'package:provider/provider.dart';

class ButtonsWidget extends StatelessWidget {
  const ButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          ElevatedButton(
            onPressed: (){
              final colorProvider = Provider.of<ColorProvider>(context,listen: false);
              colorProvider.changeBrushSize(2.0);
            }, 
            child: const Text("Small\nBrush"),
          ),
          ElevatedButton(
            onPressed: (){
              final colorProvider = Provider.of<ColorProvider>(context,listen: false);
              colorProvider.changeBrushSize(5.0);
            }, 
            child: const Text("Middle\nBrush"),
          ),
          ElevatedButton(
            onPressed: (){
              final colorProvider = Provider.of<ColorProvider>(context,listen: false);
              colorProvider.changeBrushSize(10.0);
            }, 
            child: const Text("Large\nBrush"),
          )
        ],
      ),
    );


  }
}