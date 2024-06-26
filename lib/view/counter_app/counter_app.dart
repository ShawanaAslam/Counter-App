


import 'package:flutter/material.dart';

import '../../controller/linker/linker.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int count=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen.shade200,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyCircle(rad: 100, rad1: 96, txt:'$count' )

              ],
            ),
          ),
          SizedBox(height: 150,),

          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ReusableCircleAvatar(
                  ontap: (){
                    if(count>0){
                      count--;
                    }
                    setState(() {
                    });
                  },
                     icon:Icons.minimize, rad: 24, rad1: 21,),

                SizedBox(width: 50,),
                ReusableCircleAvatar(
                    ontap: (){
                      count++;
                 setState(() {

                      });
                    },
                     icon:Icons.add, rad: 24, rad1: 21,),

                SizedBox(width: 50,),
                ReusableCircleAvatar(
                    ontap: (){
                     count = 0;
                      setState(() {

                      });
                    },
                    icon:Icons.refresh_sharp, rad: 24, rad1: 21),

              ],
            ),
         // ),
         // SizedBox(height: 2,)
        ],
      ),

    );
  }
}
