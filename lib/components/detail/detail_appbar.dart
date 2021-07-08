import 'package:ebook_app/constant.dart';
import 'package:flutter/material.dart';


class DetailAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DetailAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: greyColor100,
      elevation: 0,
      toolbarHeight: 80,
      title: Text(
        "Book Details",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 14,
          color: darkColor,
        ),
      ),
      leading: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Padding(
          padding: EdgeInsets.only(left: spacer),
          child: Icon(
            Icons.arrow_back_ios_new,
            color: darkColor,
            size: 20,
          ),
        ),
      ),
      actions: [
        InkWell(
          onTap: () {},
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child: Padding(
            padding: EdgeInsets.only(right: spacer),
            child: Icon(
              Icons.share_outlined,
              color: darkColor,
              size: 20,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(80);
}
