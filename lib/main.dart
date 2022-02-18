import 'package:flutter/material.dart';
import 'package:packagetest/widgets/opacity.dart';
import 'package:packagetest/widgets/wrap.dart';

import 'widgets/animated_container.dart';
import 'widgets/expanded.dart';
import 'widgets/safearea.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter of the Week'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return SafeAreaPage();
                    },
                  ),
                );
              },
              child: const Text('SafeArea'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return ExpandedPage();
                    },
                  ),
                );
              },
              child: const Text('Expanded'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return WrapPage();
                    },
                  ),
                );
              },
              child: const Text('Wrap'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return AnimatedContainerPage();
                    },
                  ),
                );
              },
              child: const Text('AnimatedContainer'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return OpacityPage();
                    },
                  ),
                );
              },
              child: const Text('Opacity'),
            ),
          ],
        ),
      ),
    );
  }
}
