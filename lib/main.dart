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
        body: Container(
          color: Colors.grey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [Icon(Icons.add),
              Icon(Icons.ac_unit_sharp),
              Icon(Icons.square)],
          ),
        ),
        bottomNavigationBar: Container(
          height: 70,
          color: Colors.white60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [Icon(Icons.phone),
          Icon(Icons.message),
          Icon(Icons.people)],),
        ) ,
      ),
    );

  }
}
