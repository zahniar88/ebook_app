import 'package:ebook_app/components/home/bottom_navigationbar_home.dart';
import 'package:ebook_app/components/home/category_list.dart';
import 'package:ebook_app/components/home/header_home.dart';
import 'package:ebook_app/components/home/home_appbar.dart';
import 'package:ebook_app/components/home/section_title.dart';
import 'package:ebook_app/components/home/trending_list.dart';
import 'package:ebook_app/constant.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyColor100,
      appBar: HomeAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // NOTE: header
            Header(),
            SizedBox(height: spacer),
            CategoryList(),
            SizedBox(height: spacer),
            SectionTitle(title: "Trending Now"),
            TrendingList()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBarHome(
        currentIndex: currentIndex,
        onTap: (int value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
    );
  }
}
