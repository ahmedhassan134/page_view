import 'package:flutter/material.dart';
class Home2 extends StatelessWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(
        child: Container(

          child: const Text('Welcome ',style: TextStyle(fontSize: 50),),
        ),
      ),
    );
  }
}
