import 'package:flutter/material.dart';

import '../../core/my_colors.dart';
import '../widgets/home_nav_bar.dart';
import '../widgets/items_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: MyColors.bgColor,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.sort_rounded,
                          color: MyColors.myWhite,
                          size: 35,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.search,
                          color: MyColors.myWhite,
                          size: 35,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'Hot & Fast Food',
                    style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.w800,
                      color: MyColors.myWhite,
                    ),
                  ),
                ),
                const SizedBox(height: 5.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'Delivers on Time',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w400,
                      color: MyColors.myWhite,
                    ),
                  ),
                ),
                const SizedBox(height: 30.0),
                TabBar(
                  isScrollable: true,
                  indicator: BoxDecoration(),
                  labelStyle: TextStyle(
                    fontSize: 20.0,
                  ),
                  labelPadding: EdgeInsets.symmetric(horizontal: 20),
                  tabs: [
                    Tab(
                      text: 'Burger',
                    ),
                    Tab(
                      text: 'Pizza',
                    ),
                    Tab(
                      text: 'Cheese',
                    ),
                    Tab(
                      text: 'Pasta',
                    ),
                  ],
                ),
                Flexible(
                  flex: 1,
                  child: TabBarView(
                    children: [
                      ItemsWidget(),
                      ItemsWidget(),
                      ItemsWidget(),
                      ItemsWidget(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: HomeNavBar(),
      ),
    );
  }
}
