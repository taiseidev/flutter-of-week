import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  @override
  State<AnimatedContainerPage> createState() => _AnimatedContainerPage();
}

class _AnimatedContainerPage extends State<AnimatedContainerPage> {
  bool _changeContainer = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _changeContainer = !_changeContainer;
            });
          },
          child: AnimatedContainer(
            width: _changeContainer == true ? 200 : 10,
            height: _changeContainer == true ? 200 : 10,
            decoration: BoxDecoration(
              shape: _changeContainer == true
                  ? BoxShape.circle
                  : BoxShape.rectangle,
              border: Border.all(color: Colors.red, width: 10),
              color: _changeContainer == true ? Colors.red : Colors.black,
            ),
            curve: Curves.linear,
            duration: const Duration(seconds: 1),
          ),
        ),
      ),
    );
  }
}
