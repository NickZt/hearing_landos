import 'package:flutter/material.dart';
import 'package:hearing_landos/data/general_data.dart';
import 'package:url_launcher/url_launcher.dart';

mixin MiscWidgets {
  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
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
