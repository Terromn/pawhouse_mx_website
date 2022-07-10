import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  late String appBarTitle;
  late double appBarHeight;

  MyAppBar(String title, double height, {Key? key}) : super(key: key) {
    appBarTitle = title;
    appBarHeight = height;
  }

  @override
  Size get preferredSize => Size.fromHeight(appBarHeight);

  @override
  Widget build(BuildContext context) {
    // Assign the key to Scaffold.
    return AppBar(
      toolbarHeight: MediaQuery.of(context).size.height * 0.8,
      title: Padding(
        padding:
            EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.12),
        child: Row(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('images/logo.png'), fit: BoxFit.fill),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(appBarTitle,
                  style: GoogleFonts.mPlusRounded1c(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    letterSpacing: 2,
                  )),
            ),
          ],
        ),
      ),
      actions: [
        Padding(
          padding:
              EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.12),
          child: Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.menu),
              iconSize: 44,
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
        ),
      ],
      backgroundColor: const Color(0xff2e3440),
    );
  }
}
