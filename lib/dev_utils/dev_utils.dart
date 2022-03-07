import 'package:flutter/material.dart';

class DemoScreen extends StatelessWidget {
  const DemoScreen({Key? key, this.text = 'DemoScreen', this.appbar = true})
      : super(key: key);

  final String text;
  final bool appbar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar == true ? AppBar(title: Text(text)) : null,
      body: demoBody(text),
    );
  }
}

Center demoPage(String text) => Center(child: Text(text));
Center demoBody(String text) => demoPage(text);
