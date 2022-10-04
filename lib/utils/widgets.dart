import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'icons.dart';

class MyWidgets{
  Widget stories(String img, String name){
    return Container(
      margin: EdgeInsets.only(top: 10,right: 14),
      padding: EdgeInsets.only(left: 4),
      height: 94,
      width: 76,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(3),
            height: 68,
            width: 68,
            decoration:const  BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Color(0xFFDE0046),
                      Color(0xFFF7A34B)
                    ]
                ),
                borderRadius: BorderRadius.all(Radius.circular(50))
            ),
            child: Container(
                height: 60,
                width: 60,
                padding: EdgeInsets.all(2),
                decoration:const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  color: Colors.white,
                ),
                child: Container(
                  decoration:  BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      image: DecorationImage(
                        image: AssetImage(img),
                        fit: BoxFit.cover,
                      )
                  ),
                )
            ),
          ),
          Center(child: Text(name,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),))
        ],
      ),
    );
  }
  Widget bottom_post(String icon){
    return Container(
      child: Row(
        children: [
          Container(
            height: 26,
            width: 26,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(icon),
                  fit: BoxFit.cover,
                )
            ),
          )
        ],
      ),
    );
  }
}