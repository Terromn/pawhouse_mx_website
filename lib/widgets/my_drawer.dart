import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pawhouse_website/assests/my_colors.dart';

// ignore: must_be_immutable
class MyDrawer extends StatelessWidget {
  late String drawerTitle;

  MyDrawer(this.drawerTitle, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 600,
      backgroundColor: MyColors.bgColor.shade700,

      //Stuff Inside
      child: ListView(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(color: MyColors.bgColor),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  drawerTitle,
                  style: GoogleFonts.mPlusRounded1c(
                      color: Colors.white,
                      fontSize: 64,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 12, top: 12, right: 120),
            child: ListTile(
              autofocus: (drawerTitle == "INICIO"),
              leading: const Padding(
                padding: EdgeInsets.only(left: 30),
                child: Icon(Icons.home, size: 42, color: MyColors.white),
              ),
              title: Text(
                'INICIO',
                style: GoogleFonts.mPlusRounded1c(
                    color: MyColors.white, fontSize: 32),
              ),
              onTap: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 12, top: 12, right: 120),
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: ListTile(
                autofocus: (drawerTitle == "PRECIOS"),
                leading: const Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Icon(Icons.monetization_on,
                      size: 42, color: MyColors.white),
                ),
                title: Text(
                  'PRECIOS',
                  style: GoogleFonts.mPlusRounded1c(
                      color: MyColors.white, fontSize: 32),
                ),
                onTap: () {},
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 12, top: 12, right: 120),
            child: ListTile(
              autofocus: (drawerTitle == "FAQ"),
              leading: const Padding(
                padding: EdgeInsets.only(left: 30),
                child: Icon(Icons.question_mark_rounded,
                    size: 42, color: MyColors.white),
              ),
              title: Text(
                'FAQ',
                style: GoogleFonts.mPlusRounded1c(
                    color: MyColors.white, fontSize: 32),
              ),
              onTap: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 12, top: 12, right: 120),
            child: ListTile(
              autofocus: (drawerTitle == "NOSOTROS"),
              leading: const Padding(
                padding: EdgeInsets.only(left: 30),
                child: Icon(Icons.people_alt_rounded,
                    size: 42, color: MyColors.white),
              ),
              title: Text(
                'NOSOTROS',
                style: GoogleFonts.mPlusRounded1c(
                    color: MyColors.white, fontSize: 32),
              ),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
