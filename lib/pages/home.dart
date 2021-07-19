import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gozem_ui_clone/utils/styles.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Styles.primaryColor,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Gozem UI Clone with Flutter", style: GoogleFonts.dmSans(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white)),
            Gap(20),
            customRichText(title: "Date", text: "20/07/21 at 16H GMT"),
            customRichText(title: "By", text: "martinoyovo")
          ],
        ),
      ),
    );
  }
  Widget customRichText({required String title, required String text}) => RichText(text: TextSpan(
      children: [
        TextSpan(text: "$title: ", style: GoogleFonts.dmSans(fontSize: 17, color: Colors.white)),
        TextSpan(text: text, style: GoogleFonts.dmSans(fontWeight: FontWeight.bold, fontSize: 17, color: Colors.white, fontStyle: FontStyle.italic),)
      ]
  ));
}
