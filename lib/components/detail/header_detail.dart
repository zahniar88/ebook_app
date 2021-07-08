import 'package:ebook_app/constant.dart';
import 'package:ebook_app/models/trend.dart';
import 'package:flutter/material.dart';


class HeaderDetail extends StatelessWidget {
  const HeaderDetail({
    Key? key,
    required this.trend,
  }) : super(key: key);

  final Trend trend;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              trend.title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: blackColor,
              ),
            ),
            Text(
              trend.creator,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: greyColor400,
              ),
            ),
          ],
        ),
        Spacer(),
        Text(
          "Free Access",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: greenColor,
          ),
        ),
      ],
    );
  }
}
