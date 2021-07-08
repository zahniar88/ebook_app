import 'package:ebook_app/constant.dart';
import 'package:ebook_app/models/category.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedCategory = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: categories.map((category) {
          int index = categories.indexOf(category);
          return InkWell(
            onTap: () {
              setState(() {
                selectedCategory = index;
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
              alignment: Alignment.center,
              height: 41,
              margin: EdgeInsets.only(
                right: 10,
                left: index == 0 ? spacer : 0,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: (selectedCategory == index)
                    ? greenColor
                    : Colors.transparent,
              ),
              child: Text(
                category.title,
                style: TextStyle(
                  fontSize: (selectedCategory == index) ? 14 : 12,
                  fontWeight: FontWeight.w600,
                  color:
                      (selectedCategory == index) ? whiteColor : greyColor400,
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
