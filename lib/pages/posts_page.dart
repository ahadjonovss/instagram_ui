import 'package:flutter/material.dart';
import 'package:instagram/utils/icons.dart';
import 'package:instagram/utils/widgets.dart';

class PostsPage extends StatefulWidget {
  const PostsPage({Key? key}) : super(key: key);

  @override
  State<PostsPage> createState() => _PostsPageState();
}

class _PostsPageState extends State<PostsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                  itemBuilder:(context, index) => MyWidgets().stories(MyIcons.account_logo,"ahadjonovss"),
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                ),
              ), //stories
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
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            image: DecorationImage(
                              image: AssetImage(MyIcons.account_logo),
                              fit: BoxFit.cover,
                            )
                          ),
                        ),
                        SizedBox(width: 10,),
                        Text("ahadjonovss",style: TextStyle(fontSize: 14),),
                        Container(
                          margin: EdgeInsets.only(left: 230),
                          height: 4,
                          width: 20,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(MyIcons.icon_more),
                              fit: BoxFit.cover
                            )
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ), //Posts top
              Container(
                height: 400,
                width: 400,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Image(image: AssetImage(MyIcons.first_img)),
                    Image(image: AssetImage(MyIcons.first_img)),
                    Image(image: AssetImage(MyIcons.first_img))
                  ],
                ),
              ), // Photos
              Container(
                padding: EdgeInsets.only(left: 8,right: 8),
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
                              children:[
                          MyWidgets().bottom_post(MyIcons.icon_like),
                          SizedBox(width: 12,),
                          MyWidgets().bottom_post(MyIcons.icon_comments),
                          SizedBox(width: 12,),
                          MyWidgets().bottom_post(MyIcons.icon_share),
                              ],
                          ),
                          ),
                          Container(
                            height: 8,
                            child: Image.asset(MyIcons.icon_indecator),
                          ),
                          SizedBox(width: 20,),
                          MyWidgets().bottom_post(MyIcons.icon_share),

                        ],
                      ),
                    ), //Like Bar
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      child: Text("100 Likes",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w700),),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 12),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("userna",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700),),
                          SizedBox(width: 8,),
                          Text("Salom dostim qalesan zormi\nNma gapla udar app bo'pti")
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 16,left: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Add comment...",style: TextStyle(color: Colors.grey),),
                          Container(
                            margin: EdgeInsets.only(right: 8),
                            height: 16,
                            width: 16,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(MyIcons.icon_add)
                              )
                            ),
                          )
                        ],
                      ),
                    )

                  ],
                ),
              )

            ],
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
