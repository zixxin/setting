import 'package:flutter/material.dart';

import 'setting.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '아니 이거 왜 안돼',
      theme: new ThemeData(
        backgroundColor: Color(0xFF3A70AF),
      ),
      home: new Setting(),
    );
  }
}
