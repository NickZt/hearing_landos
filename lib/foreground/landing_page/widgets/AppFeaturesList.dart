
import 'package:flutter/material.dart';
import 'package:hearing_landos/data/general_data.dart';
import 'package:hearing_landos/data/model/AppFeatureModel.dart';
import 'package:hearing_landos/foreground/base_widgets/OneHeader.dart';

import 'Features.dart';
class AppFeaturesList extends StatefulWidget {
  @override
  _AppFeaturesListState createState() => _AppFeaturesListState();
}

class _AppFeaturesListState extends State<AppFeaturesList> {
  List<AppFeatureModel> myAppFeatures = new List<AppFeatureModel>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myAppFeatures = getAppFeatures();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: myAppFeatures.length,
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          itemBuilder: (context, index) {
            return AppFeatureTile(
              title: myAppFeatures[index].getFeatureTitle(),
              description: myAppFeatures[index].getFeatureDescription(),
              assetPath: myAppFeatures[index].getImagePath(),
              tileIndex: index,
            );
          }),
    );
  }
}
class AppFeatureTile extends StatelessWidget {
  String assetPath, title, description;
  int tileIndex;

  AppFeatureTile(
      {this.assetPath, this.title, this.description, this.tileIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
        height:  MediaQuery.of(context).size.width > 700 ? 700 : null,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
            vertical: 30,
            horizontal: MediaQuery.of(context).size.width > 800 ? 40 : 20),
        decoration: tileIndex % 2 == 0
            ? BoxDecoration(
            gradient: LinearGradient(
                colors: [const Color(0xffFEB692), const Color(0xffEA5455)]))
            : null,
        child: tileIndex % 2 == 0 ? Container(
          child: MediaQuery.of(context).size.width < 700 ? Column(
            children: <Widget>[
              OneHeaderR(
                assetPath: assetPath,
                fixedSize: false,
              ),
              FeatureTileText(
                title: title,
                description: description,
                myIndex: tileIndex,
              )
            ],
          ): Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: OneHeaderR(
                  assetPath: assetPath,
                  fixedSize: true,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width > 1000
                    ? 500
                    : MediaQuery.of(context).size.width / 2,
                child: FeatureTileText(
                  title: title,
                  description: description,
                  myIndex: tileIndex,
                ),
              )
            ],
          ),
        ) : Container(
          child: MediaQuery.of(context).size.width < 700 ? Column(
            children: <Widget>[
              OneHeaderR(
                assetPath: assetPath,
                fixedSize: false,
              ),
              FeatureTileText(
                title: title,
                description: description,
                myIndex: tileIndex,
              )
            ],
          ): Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width > 1000
                    ? 500
                    : MediaQuery.of(context).size.width / 2,
                child: FeatureTileText(
                  title: title,
                  description: description,
                  myIndex: tileIndex,
                ),
              ),
              Container(
                child: OneHeaderR(
                  assetPath: assetPath,
                  fixedSize: true,
                ),
              ),
            ],
          ),
        )
    );
  }
}
