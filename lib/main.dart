import 'package:flutter/material.dart';

import 'package:widgeets/homeScreen.dart';
import 'package:widgeets/view/screens/pageview.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main() async  {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences _prefs =  await SharedPreferences.getInstance();
  bool ? token=_prefs.getBool("x");
  Widget screen=(token==false|| token==null)?PaageView():HomeScreen();

  runApp(MaterialApp(home: screen,));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(primaryColor: Colors.deepPurple,canvasColor: Colors.pink),
      // darkTheme: ThemeData(primaryColor: Colors.black,canvasColor:Colors.black ),
      home:PaageView(),
    );
  }
}
