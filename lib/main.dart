import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // runapp 안에서 메인 페이지를 구동시켜 준다
}

class MyApp extends StatelessWidget {  //여기부터
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) { //여기까지는 기본적인 세팅

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('성명기'),),
        body: Row(children: [Text('data'),Text('data'),],),
        bottomNavigationBar: BottomAppBar(child: Text("asd"),),
      ),
    );

  }
}
