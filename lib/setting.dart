import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  @override
  SettingState createState() => SettingState();
}

class SettingState extends State<Setting> {
  bool isSwitched1 = false;
  bool isSwitched2 = false;

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
                  Container(height: 50.0),
                  _text1(),
                  Container(height: 10.0),
                  Container(
                    width: 350,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                      color: Color(0xFFE5E5E5),
                    ),
                    child: _text11(),
                  ),
                  Container(height: 10.0),
                  Container(
                    width: 350,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                      color: Color(0xFFE5E5E5),
                    ),
                    child: _text21(),
                  ),
                  Container(height: 20.0),
                  _text2(),
                  Container(height: 10.0),
                  Container(
                    width: 350,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                      color: Color(0xFFE5E5E5),
                    ),
                    child: _text31(),
                  ),
                  Container(height: 330.0),
                  Container(
                    width: 300,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Color(0xFFFF5252),
                        borderRadius: BorderRadius.circular(30)),
                    child: _text41(),
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
        Container(width: 35.0),
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
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(width: 10.0),
        Text(
          '공지사항',
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        Container(width: 250.0),
        Icon(
          Icons.arrow_forward_ios,
          size: 25,
          color: Colors.grey,
        ),
      ],
    );
  }

  Widget _text2() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(width: 35.0),
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
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(width: 10.0),
        Text(
          '알림',
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        Container(width: 250.0),
        Switch(
          value: isSwitched1,
          onChanged: (value) {
            setState(() {
              isSwitched1 = value;
              print(isSwitched1);
            });
          },
          activeTrackColor: Color(0xFF3A70AF),
          activeColor: Colors.white,
        ),
      ],
    );
  }

  Widget _text31() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(width: 10.0),
        Text(
          '다크모드',
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        Container(width: 223.0),
        Switch(
          value: isSwitched2,
          onChanged: (value) {
            setState(() {
              isSwitched2 = value;
              print(isSwitched2);
            });
          },
          activeTrackColor: Color(0xFF3A70AF),
          activeColor: Colors.white,
        ),
      ],
    );
  }

  Widget _text41() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(width: 120.0),
        Text(
          '로그아웃',
          style: TextStyle(
            fontSize: 17,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
