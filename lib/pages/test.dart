import 'package:flutter/material.dart';
import 'package:instagram/pages/posts_page.dart';

class MyTabBar extends StatefulWidget {
  const MyTabBar({Key? key}) : super(key: key);

  @override
  State<MyTabBar> createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              Container(
                height: 700,
                width: 400,
                child: TabBarView(
                  children: [
                    PostsPage(),
                    Container(),
                    Container()
                  ],
                ),
              ),
              Container(
                child: TabBar(
                  tabs: [
                    Tab(icon: Icon(Icons.home,color: Colors.black,),),
                    Tab(icon: Icon(Icons.home,color: Colors.black,),),
                    Tab(icon: Icon(Icons.home,color: Colors.black,),),
                  ],
                ),
              )
            ],
          )
        )
      ),
    );
  }
}
