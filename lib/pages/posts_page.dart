import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:instagram/pages/account_page.dart';
import 'package:instagram/pages/comments.dart';
import 'package:instagram/pages/home_page.dart';
import 'package:instagram/pages/stories_page.dart';
import 'package:instagram/utils/icons.dart';
import 'package:instagram/utils/post_info.dart';
import 'package:instagram/utils/title_widget.dart';
import 'package:instagram/utils/user_model.dart';
import 'package:instagram/utils/widgets.dart';
import 'package:story_view/controller/story_controller.dart';

import 'indicator.dart';
User ahadjonovss=User(username: "ahadjonovss", account_logo: MyIcons.account_logo, followers: "1B", following: 0, description: "ahadjonovss is here again, Yep it's me, and who are you? Okay, he is good", users_posts: []);

class PostsPage extends StatefulWidget {
  const PostsPage({Key? key}) : super(key: key);

  @override
  State<PostsPage> createState() => _PostsPageState();
}

class _PostsPageState extends State<PostsPage> {
  final StoryController controller = StoryController();
  List<PostsInfo> post=[
    PostsInfo(username: "ahadjonovss", photos: [MyIcons.img_2,MyIcons.account_logo], account_logo: MyIcons.account_logo,user: 0,title: "fsgfdsghdgffffffffffertyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyfffffffffffffffffffffffffffffdghregwergwergwer"),
    PostsInfo(username: "someone", photos: [MyIcons.img_1,MyIcons.first_img], account_logo: MyIcons.img_2,user: 0,title: "fsgfdsgdghregwergwergwer"),
    PostsInfo(username: "uzbek_sila", photos: [MyIcons.img_3,MyIcons.img_1], account_logo: MyIcons.img_3,user: 0,title: "fsgfdsgdghregwergwergwer"),
  ];
    List<Widget> pages=[
    HomePage(),
    Container(),
    Container(),
    Container(),
    AccountPage()
  ];
  int currentgape=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentgape],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentgape,
        onTap: (value){
          setState(() {
            currentgape=value;
          });

        },
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




