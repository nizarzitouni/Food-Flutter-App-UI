import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app_ui/core/my_colors.dart';

class HomeNavBar extends StatelessWidget {
  const HomeNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 70,
      decoration: BoxDecoration(
        color: MyColors.bgColor,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: MyColors.myBblack.withOpacity(.4),
            blurRadius: 8,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.mail,
            color: Colors.white,
            size: 35,
          ),
          Icon(
            Icons.favorite,
            color: Colors.white,
            size: 35,
          ),
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: MyColors.myYellow,
              borderRadius: BorderRadius.circular(30.0),
              boxShadow: [
                BoxShadow(
                  color: MyColors.myWhite.withOpacity(.4),
                  blurRadius: 6,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Icon(
              CupertinoIcons.cart_fill,
              color: Colors.white,
              size: 30,
            ),
          ),
          Icon(
            Icons.notifications,
            color: Colors.white,
            size: 35,
          ),
          Icon(
            Icons.person,
            color: Colors.white,
            size: 35,
          ),
        ],
      ),
    );
  }
}
