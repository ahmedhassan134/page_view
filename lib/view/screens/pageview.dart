import 'dart:async';

import 'package:flutter/material.dart';
import 'package:widgeets/view/screens/widget/classes.dart';
import 'package:widgeets/classes/page_view.dart';
import 'package:widgeets/homeScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';



class PaageView extends StatefulWidget {
  const PaageView({Key? key}) : super(key: key);

  @override
  _PaageViewState createState() => _PaageViewState();
}

class _PaageViewState extends State<PaageView> {
  int _currentIndex=0;
  final PageController _controller=PageController();

  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 3), (_){
      if(_currentIndex<3)
        {
          _currentIndex++;
          _controller.animateToPage(_currentIndex, duration:Duration(milliseconds: 300), curve: Curves.easeIn);
        }


    }
    );

  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _controller,
            onPageChanged: (val){
              setState(() {
                _currentIndex=val;
                // if(_currentIndex==3)
                //   {
                //     Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                //       return HomeScreen();
                //
                //     }
                //     ),
                // );}
              });

            },
              itemCount: myData.length,
              itemBuilder: (BuildContext context, index) {
                return Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: ExactAssetImage("${myData[index].image}"))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        myData[index].iconData,
                        size: 200,
                        color: Colors.deepPurple,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        "${myData[index].title}",
                        style: TextStyle(color: Colors.red, fontSize: 30),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "${myData[index].description}",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  ),
                );
              }),
          Align(
            alignment: Alignment(0,.7),

              child: Indicator(_currentIndex)),
          Align(
            alignment: Alignment(0.0, 0.9),
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: MaterialButton(
                onPressed: () async {
                  SharedPreferences _prefs =  await SharedPreferences.getInstance();
                  _prefs.setBool("x", true);

                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                    return HomeScreen();

                  }
                  )
                  );
                },
                color: Colors.pink,
                child: Text(
                  'Get Started',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
