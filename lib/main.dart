import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/data/performance.dart';
import 'package:myapp/sp_heleper.dart';
import 'listview.dart';
import 'settingsview.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MyAppState();
}

class _MyAppState extends State<MainPage> {
  final TextEditingController txtname = TextEditingController();
  final TextEditingController txtid = TextEditingController();
  final TextEditingController txtpassword = TextEditingController();
  final SPHelper helper = SPHelper();
  @override
  void initState() {
    helper.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
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
                  onPressed: () {
                    // make alert dialog
                    showDialog(
                        context: context,
                        builder: ((context) => AlertDialog(
                              title: Text("Enter Password"),
                              content: SingleChildScrollView(
                                child: Column(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(bottom: 10),
                                      child: TextField(
                                        obscureText: false,
                                        controller: txtname,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText: 'Domain Name',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(bottom: 10),
                                      child: TextField(
                                        obscureText: false,
                                        controller: txtid,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText: 'ID',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(bottom: 10),
                                      child: TextField(
                                        scrollPadding: EdgeInsets.all(10),
                                        obscureText: true,
                                        controller: txtpassword,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText: 'Password',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                      txtname.text = "";
                                      txtid.text = "";
                                      txtpassword.text = "";
                                    },
                                    child: Text("Cancel")),
                                TextButton(
                                    onPressed: saveData, child: Text("Submit")),
                              ],
                            )));
                  },
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
    );
  }

  Future saveData() async {
    Performance newPerfomance =
        Performance(1, txtname.text, txtid.text, txtpassword.text);
    helper.writePerformance(newPerfomance);
    txtname.text = '';
    txtid.text = '';
    txtpassword.text = '';
    Navigator.pop(context);
  }
}
