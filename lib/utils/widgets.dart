import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/utils/post_info.dart';
import 'package:flutter/material.dart';
import 'icons.dart';

class MyWidgets {
  Widget stories(String name) {
    return Container(
      margin: EdgeInsets.only(top: 10, right: 14),
      padding: EdgeInsets.only(left: 4),
      height: 94,
      width: 76,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(3),
            height: 68,
            width: 68,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xFFDE0046), Color(0xFFF7A34B)]),
                borderRadius: BorderRadius.all(Radius.circular(50))),
            child: Container(
                height: 60,
                width: 60,
                padding: EdgeInsets.all(2),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  color: Colors.white,
                ),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      image: DecorationImage(
                        image: NetworkImage("https://source.unsplash.com/random"),
                        fit: BoxFit.cover,
                      )),
                )),
          ),
          Center(
              child: Text(
            name,
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
          ))
        ],
      ),
    );
  }

  Widget bottom_post(String icon) {
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
            )),
          )
        ],
      ),
    );
  }

  Widget post(PostsInfo post) {
    PageController controller=PageController();
    return Container(
      child: Column(
        children: [
          Container(
            height: 50,
            width: 400,
            child: Center(
              child: Container(
                height: 50,
                width: 400,
                padding: EdgeInsets.only(left: 8),
                child: Row(
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          image: DecorationImage(
                            image: AssetImage(post.account_logo),
                            fit: BoxFit.cover,
                          )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      post.username,
                      style: TextStyle(fontSize: 14),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 230),
                      height: 4,
                      width: 20,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(MyIcons.icon_more),
                              fit: BoxFit.cover)),
                    )
                  ],
                ),
              ),
            ),
          ), //Posts top
          Container(
              height: 400,
              width: 400,
              child: PageView.builder(
                onPageChanged: (index){

                },
                controller: controller,
                scrollDirection: Axis.horizontal,
                itemCount: post.photos.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Image.asset(post.photos[index]),
                  );
                },
              )), // Photos
          Container(
            padding: EdgeInsets.only(left: 8, right: 8),
            height: 138,
            width: 400,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            MyWidgets().bottom_post(MyIcons.icon_like),
                            SizedBox(
                              width: 12,
                            ),
                            MyWidgets().bottom_post(MyIcons.icon_comments),
                            SizedBox(
                              width: 12,
                            ),
                            MyWidgets().bottom_post(MyIcons.icon_share),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 10,
                            width: 90,
                            child: ListView.builder(itemBuilder: (context, index) => point(index,1),
                              itemCount: post.photos.length,
                              scrollDirection: Axis.horizontal,),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      MyWidgets().bottom_post(MyIcons.icon_save),
                    ],
                  ),
                ), //Like Bar
                Container(
                  margin: EdgeInsets.only(top: 8),
                  child: Text(
                    "${post.count_likes} Likes",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 12),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "najottalim",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                          "O'zbekistondagi eng yaxshi IT kanal🔥")
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16, left: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Add comment...",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 8),
                        height: 16,
                        width: 16,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(MyIcons.icon_add))),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
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

}
