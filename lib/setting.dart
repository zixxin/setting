import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  @override
  SettingState createState() => SettingState();
}

class SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '아니 이거 왜 안돼',
      home: Scaffold(
        appBar: AppBar(
          title: Text('설정'),
          centerTitle: false,
          backgroundColor: Color(0xFF3A70AF),
        ),
        body: Builder(builder: (BuildContext context) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(height: 70.0),
                  _text1(),
                  Container(height: 10.0),
                  Container(
                    width: 250,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                      color: Color(0xFFD4D4D4),
                    ),
                    child: _text11(),
                  ),
                  Container(height: 5.0),
                  Container(
                    width: 250,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                      color: Color(0xFFD4D4D4),
                    ),
                    child: _text21(),
                  ),
                  Container(height: 10.0),
                  _text2(),
                  Container(height: 10.0),
                  Container(
                    width: 250,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                      color: Color(0xFFD4D4D4),
                    ),
                    child: _text31(),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }

  Widget _text1() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(width: 30.0),
        Text(
          '서비스',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ],
    );
  }

  Widget _text11() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(width: 10.0),
        Text(
          '공지사항',
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ],
    );
  }

  Widget _text2() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(width: 30.0),
        Text(
          '편리한 기능',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ],
    );
  }

  Widget _text21() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(width: 10.0),
        Text(
          '알림',
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ],
    );
  }

  Widget _text31() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(width: 10.0),
        Text(
          '다크모드',
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
