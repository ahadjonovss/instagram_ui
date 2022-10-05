import 'package:flutter/material.dart';
import 'package:instagram/pages/comments.dart';
import 'package:instagram/utils/icons.dart';
import 'package:instagram/utils/post_info.dart';
import 'package:instagram/utils/widgets.dart';

import 'indicator.dart';

class PostsPage extends StatefulWidget {
  const PostsPage({Key? key}) : super(key: key);

  @override
  State<PostsPage> createState() => _PostsPageState();
}

class _PostsPageState extends State<PostsPage> {
  List<PostsInfo> post=[
    PostsInfo(username: "ahadjonovss", photos: [MyIcons.img_2,MyIcons.account_logo], account_logo: MyIcons.account_logo,user: 0),
    PostsInfo(username: "someone", photos: [MyIcons.img_1,MyIcons.first_img], account_logo: MyIcons.img_2,user: 0),
    PostsInfo(username: "uzbek_sila", photos: [MyIcons.img_3,MyIcons.img_1], account_logo: MyIcons.img_3,user: 0),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 12),
                  height: 36,
                  width: 400,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15,top: 3),
                        height: 30,
                        width: 104,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(MyIcons.logo),
                            fit: BoxFit.cover,
                          )
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        child: Row(
                          children: [
                            Container(
                              height: 24,
                              width: 24,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(MyIcons.icon_add),
                                  fit: BoxFit.cover
                                )
                              ),
                            ),
                            SizedBox(width: 20,),
                            Container(
                              height: 24,
                              width: 24,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(MyIcons.icon_like),
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),
                            SizedBox(width: 20,),
                            Container(
                              height: 24,
                              width: 24,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(MyIcons.icon_direct),
                                      fit: BoxFit.cover
                                  )
                              ),
                            )
                          ],

                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 110,
                  width: 400,
                  child: ListView.builder(
                    itemBuilder:(context, index) => MyWidgets().stories("ahadjonovss"),
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                  ),
                ), //stories
                Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    child: ListView.builder(
                      itemBuilder: (context, index) => Column(
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
                                          image: AssetImage(post[index].account_logo),
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    post[index].username,
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
                              onPageChanged: (value){
                                setState(() {
                                  post[index].current_page=value;
                                  print(post[index].current_page);
                                });

                              },
                              scrollDirection: Axis.horizontal,
                              itemCount: post[index].photos.length,
                              itemBuilder: (context, p_w_b) {
                                return Container(
                                  child: Image.asset(post[index].photos[p_w_b]),
                                );
                              },
                            )), // Photos
                        Container(
                          padding:  EdgeInsets.only(left: 8, right: 8),
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
                                          InkWell(
                                              child: Icon(post[index].isLiked?Icons.favorite:Icons.favorite_outline),
                                          onTap: (){
                                                setState(() {
                                                  post[index].isLiked=!post[index].isLiked;
                                                  post[index].isLiked?post[index].count_likes+=1:post[index].count_likes-=1;
                                                });
                                          }),
                                          SizedBox(
                                            width: 12,
                                          ),
                                          InkWell(
                                            onTap: (){
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Comments(post: post[index])));
                                            },
                                              child: MyWidgets().bottom_post(MyIcons.icon_comments)),
                                          SizedBox(
                                            width: 12,
                                          ),
                                          MyWidgets().bottom_post(MyIcons.icon_share),
                                        ],
                                      ),
                                    ), //Like
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 10,
                                          width: 90,
                                          child: ListView.builder(itemBuilder: (context, index2) => Container(
                                            margin: EdgeInsets.only(left: 4),
                                            height: 10,
                                            width: 10,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                color: index2==post[index].current_page?Colors.black:Colors.grey,
                                            ),
                                          ),
                                            itemCount: post[index].photos.length,
                                            scrollDirection: Axis.horizontal,),
                                        )
                                      ],
                                    ), //indicator
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
                                  "${post[index].count_likes} Likes",
                                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 12),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      post[index].comments.length>0?post[index].comments[0].username:"",
                                      style: TextStyle(
                                          fontSize: 14, fontWeight: FontWeight.w700),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      post[index].comments.length>0?post[index].comments[0].comment:"No comments yet"),
                                  ],
                                ),
                              ), //comments
                              Container(
                                margin: EdgeInsets.only(top: 16, left: 30),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 200,
                                      child: TextField(
                                        controller: post[index].text_controller,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "Add comment..."
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: (){
                                        post[index].comments.insert(0,CommentModel(username: "ahadjonovss", account_logo: MyIcons.account_logo, comment: post[index].text_controller.text));
                                        post[index].text_controller.text="";
                                        setState(() {

                                        });
                                      },
                                      child: Container(
                                        margin: EdgeInsets.only(right: 8),
                                        height: 16,
                                        width: 16,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(MyIcons.icon_add))),
                                      ),
                                    )
                                  ],
                                ),
                              ), //comments
                            ],
                          ),
                        )
                      ],
                    ),
                      itemCount: post.length,

                    ),
                    height: 600,
                    width: 400,

                  ),
                ],
              ),
            ),
          )

              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Container(
                height: 21,
                width: 21,
                child: Image.asset(MyIcons.icon_home_unselected),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Container(
                height: 21,
                width: 21,
                child: Image.asset(MyIcons.icon_search_unselected),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Container(
                height: 21,
                width: 21,
                child: Image.asset(MyIcons.icon_reels),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Container(
                height: 21,
                width: 21,
                child: Image.asset(MyIcons.icon_shop),
              ),
              label: ""),
          BottomNavigationBarItem(
            icon: Container(
                height: 21,
                width: 21,
                decoration:const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                    image: AssetImage(MyIcons.account_logo),
                    fit: BoxFit.cover
                  )
                ),
            ),
            label: ""
          ),
        ],
      ),
    );
  }
}




