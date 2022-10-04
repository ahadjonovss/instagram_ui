import 'package:flutter/material.dart';
import 'package:instagram/utils/icons.dart';

class PostsPage extends StatefulWidget {
  const PostsPage({Key? key}) : super(key: key);

  @override
  State<PostsPage> createState() => _PostsPageState();
}

class _PostsPageState extends State<PostsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
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
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                )),
          ),
        ],
      ),
    );
  }
}
