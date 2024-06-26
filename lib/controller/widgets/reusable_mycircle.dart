

import 'package:flutter/material.dart';

import '../linker/linker.dart';

class MyCircle extends StatelessWidget {
  double rad;
  double rad1;
  Color bacclr;
  Color bacclr1;
  String txt;
   MyCircle({super.key,required this.rad,required this.rad1,
   this.bacclr=Colors.black,  this.bacclr1=Colors.purpleAccent,required this.txt});

  @override
  Widget build(BuildContext context) {
    return  CircleAvatar(
      radius: rad,
      backgroundColor: bacclr,
      child: CircleAvatar(
        radius: rad1,
        backgroundColor: bacclr1,
        child: Text(txt,style:TextStyle(color: Colors.black,
            fontSize: 80,
            fontWeight: FontWeight.w800)),
      ),
    );
  }
}
