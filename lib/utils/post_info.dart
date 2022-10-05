import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'icons.dart';
Random random=Random();
class PostsInfo{
  String username;
  bool isLiked=false;
  bool isSaved=false;
  int count_likes=random.nextInt(1000);
  List<String> photos;
  String account_logo;
  List<CommentModel> comments=[];
  int current_page=0;
  int user;
  PageController controller=PageController();
  TextEditingController text_controller= TextEditingController();

  PostsInfo({required this.username,required this.photos,required this.account_logo,required this.user});
}
List<PostsInfo> post=[
  PostsInfo(username: "ahadjonovss", photos: [MyIcons.icon_save,MyIcons.account_logo], account_logo: MyIcons.account_logo,user: 0),
  PostsInfo(username: "rayhon.___a", photos: [MyIcons.icon_save,MyIcons.account_logo], account_logo: MyIcons.account_logo2,user: 1),
];

class CommentModel{
  String username;
  String account_logo;
  String comment;

  CommentModel({required this.username,required this.account_logo,required this.comment});
}