import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
mixin MiscWidgets {
  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  List<Widget> childrenAppStores({String playStorelinkUrl = "", String appleStorelinkUrl = ""}) {
    return <Widget>[
      if (playStorelinkUrl.isNotEmpty)
        Flexible(
            fit: FlexFit.loose,
            child: GestureDetector(
                onTap: () {
                  launchURL(playStorelinkUrl);
                },
                child: Image.asset(
                  "assets/google_play_button.png",
                  width: 150,
                  height: 50,
                ))),
      if (appleStorelinkUrl.isNotEmpty)
        Flexible(
            fit: FlexFit.loose,
            child: GestureDetector(
                onTap: () {
                  launchURL(appleStorelinkUrl);
                },
                child: Image.asset(
                  "assets/app_store_badge.png",
                  width: 180,
                  height: 130,
                )))
    ];
  }
}
