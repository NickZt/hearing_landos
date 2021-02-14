import 'package:flutter/material.dart';
import 'package:hearing_landos/data/general_data.dart';
import 'package:hearing_landos/foreground/base_widgets/MiscWidgets.dart';
import 'package:hearing_landos/generated/l10n.dart';

class Bottom extends StatelessWidget with MiscWidgets {
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
            S.of(context).hearing_closingTitle,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500, color: Color(0xCC262626)),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            S.of(context).hearing_closingDescription,
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

class BelowBottom extends StatelessWidget with MiscWidgets {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 60, horizontal: 40),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [const Color(0xffFEB692), const Color(0xffEA5455)])),
      child: Column(
        children: <Widget>[
          Text(
            S.of(context).hearing_finaCalltoAction,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.w300, color: Colors.white),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: childrenAppStores(playStorelinkUrl: playStoreUrl),
          )
        ],
      ),
    );
  }
}
