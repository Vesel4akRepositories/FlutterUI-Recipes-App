import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(30)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(CupertinoIcons.home, color: Colors.white, size: 30),
            Icon(CupertinoIcons.creditcard, color: Colors.white, size: 30),
            Icon(CupertinoIcons.chat_bubble, color: Colors.white, size: 30),
            Icon(CupertinoIcons.profile_circled, color: Colors.white, size: 30),
          ],
        ),
      ),
    );
  }
}
