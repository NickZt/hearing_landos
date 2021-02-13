import 'package:flutter/material.dart';
import 'package:hearing_landos/data/general_data.dart';
import 'package:url_launcher/url_launcher.dart';

import 'MiscWidgets.dart';

class OneHeaderL extends StatelessWidget with MiscWidgets {


  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: MediaQuery.of(context).size.width > 700
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            appHeading,
            textAlign: MediaQuery.of(context).size.width > 700 ? null : TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            appDescription,
            textAlign: MediaQuery.of(context).size.width > 700 ? null : TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MediaQuery.of(context).size.width > 700
                ? MainAxisAlignment.start
                : MainAxisAlignment.center,
            children: childrenAppStores(),
          ),
        ],
      ),
    );
  }


}

class OneHeaderR extends StatelessWidget {
  String assetPath;
  final bool fixedSize;

  OneHeaderR({@required this.assetPath, this.fixedSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset("assets/" + assetPath),
    );
  }
}

class SecondHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 60, horizontal: 30),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Image.asset(
            "assets/test.png",
            width: 40,
            height: 40,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            maintitle,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25, color: headerColor, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            maindescription,
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
