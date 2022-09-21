import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('관광지 리스트'),
          ),
          body: ListView.builder(itemBuilder: (context, int index) {
            return Container(
              height: 70,
              color: Colors.blue[index * 200],
              alignment: Alignment.center,
              child: Text('data'),
            );
          }),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.list),
              Text('리스트')
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.map),
              Text('지도')
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.sms),
              Text('커뮤니티')

            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.memory),
              Text('AI')

            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.perm_identity),
              Text('프로필')

            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.settings),
              Text('설정')
            ],
          ),
        ],
      ),
      ),
    );
  }
}
