import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instagram/utils/icons.dart';
import 'package:instagram/utils/post_info.dart';


class Comments extends StatefulWidget {
  PostsInfo post;
  Comments({Key? key, required this.post}) : super(key: key);

  @override
  State<Comments> createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 2,top: 26,right: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 160,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(onPressed: (){
                          Navigator.pop(context);
                      }, icon: Icon(Icons.arrow_back,size: 30,)),
                      Text('Comments',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20),)
                    ],
                  ),
                ),
                Container(
                  height: 24,
                    width: 24,
                    child: Image(image: AssetImage(MyIcons.icon_share)))
              ],
            ),
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              child: Container(
                height: 800,
                child:Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 12),
                      width: 400,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Center(
                              child: Container(
                                padding: EdgeInsets.all(3),
                                height: 50,
                                width: 50,
                                decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [Color(0xFFDE0046), Color(0xFFF7A34B)]),
                                    borderRadius: BorderRadius.all(Radius.circular(50))),
                                child: Container(
                                    padding: EdgeInsets.all(2),
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(50)),
                                      color: Colors.white,
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(50)),
                                          image: DecorationImage(
                                            image: AssetImage(widget.post.account_logo),
                                            fit: BoxFit.cover,
                                          )),
                                    )),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 4),
                            child: Text(widget.post.username,style: TextStyle(fontWeight: FontWeight.w800),),
                          ),
                          SizedBox(width: 12,),
                          Text(widget.post.title)
                        ],
                      ),
                    ),
                    Container(
                      height: 760,
                      width: double.infinity,
                      child: ListView.builder(itemBuilder: (context, index) => Container(
                        margin: EdgeInsets.only(left: 12),
                        width: double.infinity,
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Center(
                                child: Container(
                                  padding: EdgeInsets.all(3),
                                  height: 50,
                                  width: 50,
                                  decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [Color(0xFFDE0046), Color(0xFFF7A34B)]),
                                      borderRadius: BorderRadius.all(Radius.circular(50))),
                                  child: Container(
                                      padding: EdgeInsets.all(2),
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(50)),
                                        color: Colors.white,
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(Radius.circular(50)),
                                            image: DecorationImage(
                                              image: AssetImage(widget.post.comments[index].account_logo),
                                              fit: BoxFit.cover,
                                            )),
                                      )),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 4),
                              child: Text(widget.post.comments[index].username,style: TextStyle(fontWeight: FontWeight.w800),),
                            ),
                            SizedBox(width: 12,),
                            Text(widget.post.comments[index].comment)
                          ],
                        ),
                      ),
                        scrollDirection: Axis.vertical,
                        itemCount: widget.post.comments.length,),
                    )
                  ],
                ),
              ),
            )




          ],
        )
      ),
    );
  }
}
