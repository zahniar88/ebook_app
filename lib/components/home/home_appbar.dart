import 'package:ebook_app/constant.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: whiteColor,
      elevation: 0,
      toolbarHeight: 80,
      flexibleSpace: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: spacer),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  "assets/person.png",
                  width: 50,
                ),
              ),
              SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Hello Sarah,",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: darkColor,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "Good Morning",
                    style: TextStyle(color: greyColor400),
                  )
                ],
              ),
              Spacer(),
              Image.asset(
                "assets/menu.png",
                width: 18,
                height: 14,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(80);
}
