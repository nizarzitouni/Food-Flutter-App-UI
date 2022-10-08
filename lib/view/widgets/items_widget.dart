import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/my_colors.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: 0.78,
      children: [
        for (int i = 1; i < 5; i++)
          Container(
            width: 80,
            height: 80,
            margin: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 13),
            decoration: BoxDecoration(
                color: MyColors.bgColor,
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    color: MyColors.myBblack.withOpacity(.4),
                    spreadRadius: 1,
                    blurRadius: 8,
                  ),
                ]),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //
                InkWell(
                  onTap: () {
                    //
                    Navigator.pushNamed(context, 'singleItemPage');
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    //child: Image.asset('', width: 120, hieght=120, fit: BoxFit.cover,),
                    child: Icon(
                      Icons.bug_report,
                      color: Colors.white,
                      size: 80,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'BugReport',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w700,
                          color: MyColors.myWhite,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Hot Burger',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w700,
                          color: MyColors.myWhite.withOpacity(.6),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '\$55',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500,
                              color: MyColors.myWhite,
                            ),
                          ),
                          Icon(
                            CupertinoIcons.cart_badge_plus,
                            color: Colors.white,
                            size: 27,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
      ],
    );
  }
}
