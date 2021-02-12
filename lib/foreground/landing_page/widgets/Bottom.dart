import 'package:flutter/material.dart';
import 'package:hearing_landos/data/general_data.dart';
import 'package:url_launcher/url_launcher.dart';

class Bottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 50, right: 40, left: 40),
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            closingTitle,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                color: Color(0xCC262626)),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            closingDescription,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 24,
          ),
          Image.asset("assets/" + coverImage)
        ],
      ),
    );
  }
}

class BelowBottom extends StatelessWidget {
  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 60, horizontal: 40),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [const Color(0xffFEB692), const Color(0xffEA5455)])),
      child: Column(
        children: <Widget>[
          Text(
            finaCalltoAction,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 23, fontWeight: FontWeight.w300, color: Colors.white),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: childrenAppStores(),
          )
        ],
      ),
    );
  }
  List<Widget> childrenAppStores() {
    return <Widget>[
      Flexible(
          fit: FlexFit.loose,
          child: GestureDetector(
              onTap: () {
                launchURL(playStoreUrl);
              },
              child: Image.asset(
                "assets/google_play_button.png",
                width: 150,
                height: 50,
              ))),
      Flexible(
          fit: FlexFit.loose,
          child: GestureDetector(
              onTap: () {
                launchURL(playStoreUrl);
              },
              child: Image.asset(
                "assets/app_store_badge.png",
                width: 180,
                height: 130,
              )))
    ];
  }
}