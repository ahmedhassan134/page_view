import 'package:flutter/material.dart';
class Indicator extends StatelessWidget {


  int ? index;
  Indicator(this.index);

  @override

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        circular(index==0?Colors.green:Colors.red),
        circular(index==1?Colors.green:Colors.red),
        circular(index==2?Colors.green:Colors.red),
        circular(index==3?Colors.green:Colors.red),

      ],
    );
  }
  Widget circular(Color color)
  {
    return  Container(
      margin: EdgeInsets.all(5),
      width: 15,
      height: 15,
      decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle
      ),
    );
  }
}
