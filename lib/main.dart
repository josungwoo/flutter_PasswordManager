import 'package:flutter/material.dart';
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Character card", // 앱의 이름
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  const Grade({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[500],
      appBar: AppBar(
        title: Text("BBANTO"),
        centerTitle: true,
        backgroundColor: Colors.indigo[400],
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('icon1.png'),
                radius: 40,
              ),
            ),
            Divider(
              color: Colors.grey[850],
              thickness: 0.5,
              height: 60,
              endIndent: 30, // 끝나는 구역에서 얼마나 떨어질지
            ),
            const Text("Name", style: TextStyle(color: Colors.white, fontSize: 28,letterSpacing: 2.0),),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
