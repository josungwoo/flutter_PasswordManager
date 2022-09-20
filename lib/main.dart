import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // runapp 안에서 메인 페이지를 구동시켜 준다
}

class MyApp extends StatelessWidget {
  //여기부터
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //여기까지는 기본적인 세팅

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('조성우'),
        ),
        body: Container(
          margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
          padding: EdgeInsets.all(10),
          color: Colors.grey,
        ),
        bottomNavigationBar: SizedBox(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.phone),
              Icon(Icons.message),
              Icon(Icons.people)
            ],
          ),
        ),
      ),
    );
  }
}
