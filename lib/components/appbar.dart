import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
class appbar extends StatelessWidget implements PreferredSizeWidget {
  appbar({Key? key})
      : preferredSize = Size.fromHeight(55.0),
        super(key: key);

  @override
  final Size preferredSize;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: AnimatedTextKit(
                animatedTexts: [
                  WavyAnimatedText(
                     'BharatUpdates',
                     textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.white),
                   ),]
                ),
        )
      ),
    );
  }
}