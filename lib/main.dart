import 'package:flutter/material.dart';
import 'listview.dart';
import 'settingsview.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Password Manager'),
          ),
          // ignore: prefer_const_literals_to_create_immutables
          body: TabBarView(children: [
            ListViewPage(),
            SettingsView(),
          ]),
          extendBodyBehindAppBar: true,
          bottomNavigationBar: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                child: Container(
                  height: 80,
                  color: Colors.blue,
                  child: const TabBar(tabs: [
                    Tab(icon: Icon(Icons.home), text: 'Home'),
                    Tab(icon: Icon(Icons.settings), text: 'Settings'),
                  ]),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      child: FloatingActionButton(
                    onPressed: () {},
                    // ignore: sort_child_properties_last
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Icon(Icons.add),
                          Text('Add', style: TextStyle(fontSize: 10)),
                        ]),
                    backgroundColor: Colors.blue,
                  )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
