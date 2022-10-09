import 'package:flutter/material.dart';
import 'package:instagram/pages/posts_page.dart';
import 'package:instagram/pages/stories_page.dart';
import 'package:instagram/utils/icons.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}


class _AccountPageState extends State<AccountPage> {
  TabController? controller;
  bool isFirst=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          child: Container(
            // padding: EdgeInsets.only(left: 16,right: 16),
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(left: 16,right: 16),
                    height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(ahadjonovss.username,style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.w700),),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          child: Icon(Icons.arrow_drop_down),
                        ),
                      )

                    ],
                  ),
                  Container(
                    width: 74,
                    child: Row(
                      children: [
                        Container(
                            child: Image.asset(MyIcons.icon_add),
                        height: 24,),
                        SizedBox(width: 20,),
                        Icon(Icons.menu)

                      ],
                    ),
                  )//username


                ],
            )
                ), //username
                Container(
                  margin: EdgeInsets.only(left: 16,right: 26),
                  height: 90,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 88,
                        width: 88,
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>MoreStories()));
                          },
                          child: Container(
                            height: 94,
                            width: 76,
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(3),
                                  height: 88,
                                  width: 88,
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
                                        decoration:  BoxDecoration(
                                            borderRadius: BorderRadius.all(Radius.circular(50)),
                                            image: DecorationImage(
                                              image: AssetImage(ahadjonovss.account_logo),
                                              fit: BoxFit.cover,
                                            )),
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ), //account logo
                      Container(
                        height: 44,
                        child: Column(
                          children: [
                            Center(child: Text("${ahadjonovss.users_posts.length}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),)),
                            Center(
                              child: Text("Posts",style: TextStyle(fontSize: 16),),
                            )
                          ],
                        ),
                      ), //posts
                      Container(
                        height: 44,
                        child: Column(
                          children: [
                            Center(child: Text("${ahadjonovss.followers}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),)),
                            Center(
                              child: Text("Followers",style: TextStyle(fontSize: 16),),
                            )
                          ],
                        ),
                      ), //followers
                      Container(
                        height: 44,
                        child: Column(
                          children: [
                            Center(child: Text("${ahadjonovss.following}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),)),
                            Center(
                              child: Text("Following",style: TextStyle(fontSize: 16),),
                            )
                          ],
                        ),
                      ), //followings
                    ],
                  ), //account info

                ),//account info
                Container(
                  margin: EdgeInsets.only(left: 18,right: 16,top: 8,),
                  width: 400,
                  height: 210,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(ahadjonovss.username,style: TextStyle(fontSize: 13,fontWeight: FontWeight.w700),),
                      Container(
                        margin: EdgeInsets.only(top: 8),
                        height: 32,
                        child: Text(ahadjonovss.description,style: TextStyle(fontSize: 13),),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 8),
                        child: Text("https://t.me/ahadjonovss",style: TextStyle(fontSize: 13,color: Colors.blue),),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 12),
                        height: 30,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey)
                        ),
                        child: Center(
                          child: Text("Edit profile",style: TextStyle(fontWeight: FontWeight.w700),),
                        ),
                      ), //Edit Profile
                      Container(
                        height: 88,
                        child: ListView.builder(
                          itemBuilder: (context, index) => shorts(context),
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,),
                      )
                    ],
                  ),
                ), //shorts
                DefaultTabController(
                    length: 2,
                    child: Column(
                      children: [
                        Container(
                          child: TabBar(
                            controller: controller,
                            onTap: (value) {
                              setState(() {
                                isFirst=!isFirst;
                              });
                            },
                            indicatorColor: Colors.black,
                              tabs: [
                            Container(
                              child: Image.asset(MyIcons.icon_grid,
                              height: 16,color: isFirst?Colors.black:Colors.grey),),
                            Container(
                              child: Image.asset(MyIcons.icon_mentions,
                                height: 16,color: isFirst?Colors.grey:Colors.black),),
                          ]),
                          height: 40,
                          padding: EdgeInsets.all(8),
                        ),
                        Container(
                          height: 400,
                          child: TabBarView(children: [
                            Expanded(child: GridView.builder(
                                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3
                                ),
                                itemCount: 100,
                                itemBuilder: (context, index) {
                                  return Container(
                                    margin: EdgeInsets.all(1),
                                    height: 130,
                                    width: 130,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage("https://source.unsplash.com/random"),
                                        fit: BoxFit.cover
                                      )
                                    ),
                                  );
                                },))
                          ]),
                        )
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
Widget shorts(BuildContext context) {
  return InkWell(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>MoreStories()));
    },
    child: Container(
      margin: EdgeInsets.only(top: 10, right: 14),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(1),
            height: 60,
            width: 60,
            decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(50))),
            child: Container(
                height: 59,
                width: 59,
                padding: EdgeInsets.all(2),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  color: Colors.white,
                ),
                child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      image: DecorationImage(
                        image: NetworkImage("https://source.unsplash.com/random"),
                        fit: BoxFit.cover,
                      )),
                )),
          ),
          Center(
              child: Text(
                "Shorts",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
              ))
        ],
      ),
    ),
  );
}
