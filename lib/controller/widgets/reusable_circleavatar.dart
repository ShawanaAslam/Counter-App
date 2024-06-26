

import 'package:flutter/material.dart';

import '../linker/linker.dart';

class ReusableCircleAvatar extends StatelessWidget {

  double rad;
  double rad1;
  Color bacclr;
  Color bacclr1;
  IconData icon;
  VoidCallback ontap;

   ReusableCircleAvatar({super.key, required this.ontap,
      this.bacclr=Colors.black,required this.icon,
      this.bacclr1=Colors.purpleAccent,required this.rad,required this.rad1});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: bacclr,
      radius: rad,
      child: InkWell(
        onTap:ontap,

        child: CircleAvatar(
          radius: rad1,
          backgroundColor: bacclr1,
          child:
          Center(child: Icon(icon,color: Colors.black,)),
          ),
        ),

    );
  }
}

