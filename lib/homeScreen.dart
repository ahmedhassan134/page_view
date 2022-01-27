

import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:widgeets/view/screens/home2.dart';




class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  //   begin:Aligment.,
                  //   end :Aligment.
                  colors: [
                Colors.deepPurpleAccent,
                Colors.pink,
                Colors.deepPurpleAccent,
              ])),
        ),
        title: Text("widget "),
        centerTitle: true,
      ),
       body: EasySplashScreen(
         logo:Image.asset("assets/images/s.jpg",fit: BoxFit.cover,),
           navigator:Home2(),
          logoSize :200,
          durationInSeconds : 5,
         backgroundColor : Colors.blue,
         loadingText : const Text('Please wait'),
         
       )
    );


  }


}
