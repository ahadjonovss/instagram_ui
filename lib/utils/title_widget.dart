import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:instagram/utils/post_info.dart';

class PostTitle extends StatelessWidget {
  PostsInfo post;
  VoidCallback moreTap;

  PostTitle({
    Key? key,
    required this.post,
    required this.moreTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 12),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "${post.username}  ",
              style:
              TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
            ),
            TextSpan(
              text: post.title.substring(
                0,
                !post.isTitleExpanded
                    ? (post.title.length > 90 ? 90 : post.title.length)
                    : post.title.length,
              ),
              style: TextStyle(color: Colors.black),
            ),
            TextSpan(
              text: !post.isTitleExpanded
                  ? (post.title.length > 90 ? "... more" : "")
                  : "\nshow less",
              style: TextStyle(color: Colors.grey),
              recognizer: TapGestureRecognizer()
                ..onTap = moreTap,
            )
          ],
        ),
      ),
    );
  }
}