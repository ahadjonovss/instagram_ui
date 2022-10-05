import 'package:flutter/material.dart';
import 'package:instagram/pages/comments.dart';
import 'package:instagram/pages/indicator.dart';
import 'package:instagram/pages/posts_page.dart';
import 'package:instagram/pages/test.dart';
import 'package:instagram/utils/post_info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: PostsPage(),
    );
  }
}
