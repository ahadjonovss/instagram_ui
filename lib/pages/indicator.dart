import 'package:flutter/material.dart';

class Indicator extends StatefulWidget {
  const Indicator({Key? key}) : super(key: key);

  @override
  State<Indicator> createState() => _IndicatorState();
}

class _IndicatorState extends State<Indicator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

            ],
          )
        ),
      ),
    );
  }
}

Widget point(int index,int currentIndex){
  return Container(
    margin: EdgeInsets.only(left: 4),
    height: 10,
    width: 10,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: index==currentIndex?Colors.black:Colors.grey

    ),
  );
}
