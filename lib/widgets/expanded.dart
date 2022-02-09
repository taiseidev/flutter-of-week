import 'package:flutter/material.dart';

class ExpandedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expandedサンプル'),
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.blue,
                height: 100,
                child: const Text('1'),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.amber,
                height: 100,
                width: 50,
                child: const Text('2'),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.blue,
                height: 100,
                child: const Text('3'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
