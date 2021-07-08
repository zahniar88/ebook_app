import 'package:ebook_app/constant.dart';
import 'package:flutter/material.dart';


class SectionDetail extends StatelessWidget {
  const SectionDetail({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 10,
            color: greyColor500,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 12,
            color: blackColor,
          ),
        ),
      ],
    );
  }
}


class LineSection extends StatelessWidget {
  const LineSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: spacer,
      width: 1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: darkColor,
      ),
    );
  }
}
