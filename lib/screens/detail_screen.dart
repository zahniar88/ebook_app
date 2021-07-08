import 'package:ebook_app/components/detail/detail_appbar.dart';
import 'package:ebook_app/components/detail/header_detail.dart';
import 'package:ebook_app/components/detail/section_detail.dart';
import 'package:ebook_app/constant.dart';
import 'package:ebook_app/models/trend.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({
    Key? key,
    required this.trend,
  }) : super(key: key);

  final Trend trend;

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyColor100,
      appBar: DetailAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 25),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  widget.trend.image,
                  width: 175,
                  height: 267,
                ),
              ),
            ),
            SizedBox(height: 25),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: double.infinity,
                  height: 370 * 2,
                  padding: EdgeInsets.all(spacer),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                    color: whiteColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HeaderDetail(trend: widget.trend),
                      SizedBox(height: spacer),
                      Text(
                        "Description",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: blackColor,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "Enchantment, as defined by bestselling business guru Guy Kawasaki, is not about manipulating people. It transforms situations and relationships. ",
                        style: TextStyle(
                          fontSize: 12,
                          color: greyColor400,
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: double.infinity,
                        height: 60,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: greyColor100,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SectionDetail(
                              title: 'Rating',
                              value: '4.8',
                            ),
                            LineSection(),
                            SectionDetail(
                              title: 'Number of pages',
                              value: '180 Page',
                            ),
                            LineSection(),
                            SectionDetail(
                              title: 'Language',
                              value: 'ENG',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: spacer),
                      MaterialButton(
                        onPressed: () {},
                        minWidth: double.infinity,
                        height: 50,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        color: greenColor,
                        elevation: 0,
                        child: Text(
                          "Read Now",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: whiteColor,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: -25,
                  right: 30,
                  child: MaterialButton(
                    onPressed: () {},
                    minWidth: 50,
                    height: 50,
                    color: greenColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    padding: EdgeInsets.all(18),
                    child: Icon(
                      Icons.bookmark,
                      color: whiteColor,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
