import 'package:flutter/material.dart';
import 'package:hearing_landos/data/general_data.dart';
import 'package:hearing_landos/foreground/base_widgets/MiscWidgets.dart';

class Footer extends StatelessWidget with MiscWidgets {
  Color textColor = Colors.white;

  /* textColor = gradients[randomNum].getBottomColor().computeLuminance() > 0.5 ?
  Colors.black54 : Colors.white70;*/

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 40),
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [const Color(0xffFEB692), const Color(0xffEA5455)])),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              launchURL(aboutUsUrl);
            },
            child: Text(
              "About Us",
              style:
                  TextStyle(fontSize: 13, color: textColor, decoration: TextDecoration.underline),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          GestureDetector(
            onTap: () {
              launchURL(PrivacypolicyUrl);
            },
            child: Text(
              "Privacy Policy",
              style:
                  TextStyle(fontSize: 13, color: textColor, decoration: TextDecoration.underline),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          GestureDetector(
            onTap: () {
              launchURL(ContactUsUrl);
            },
            child: Text(
              "Contact Us",
              style:
                  TextStyle(fontSize: 13, color: textColor, decoration: TextDecoration.underline),
            ),
          ),
        ],
      ),
    );
  }
}
