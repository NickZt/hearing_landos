import 'package:flutter/material.dart';
import 'package:hearing_landos/data/general_data.dart';
import 'package:hearing_landos/data/model/FeatureTileModel.dart';
import 'package:hearing_landos/foreground/base_widgets/ResponsiveWidget.dart';
import 'package:url_launcher/url_launcher.dart';

class FeatureTileText extends StatelessWidget {
  String title, description;
  int myIndex;

  FeatureTileText({this.title, this.description, this.myIndex});

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
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width > 700 ? 40 : 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              title,
              textAlign: MediaQuery.of(context).size.width > 700 ? null : TextAlign.center,
              style: TextStyle(
                color: myIndex % 2 == 0 ? Colors.white : Colors.black87,
                fontSize: 35,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              description,
              textAlign: MediaQuery.of(context).size.width > 700 ? null : TextAlign.center,
              style: TextStyle(
                  color: myIndex % 2 == 0 ? Colors.white : Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MediaQuery.of(context).size.width > 700
                  ? MainAxisAlignment.start
                  : MainAxisAlignment.center,
              children: childrenAppStores(),
            )
          ],
        ));
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

class FeatureSlider extends StatefulWidget {
  @override
  _FeatureSliderState createState() => _FeatureSliderState();
}

class _FeatureSliderState extends State<FeatureSlider> {
  List<FeatureTileModel> features1 = new List<FeatureTileModel>();
  List<FeatureTileModel> features2 = new List<FeatureTileModel>();

  List<String> screenshots = new List<String>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    features1 = getFeaturesTiles1();
    features2 = getFeaturesTiles2();

    for (int i = 0; i < features1.length; i++) {
      screenshots.add(features1[i].getImagePath());
    }
    for (int i = 0; i < features2.length; i++) {
      screenshots.add(features2[i].getImagePath());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Text(
            "Feature Rich. No bloat.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500, color: Color(0xCC262626)),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "Donec sit eget metus odio. Aliqua dolor metus in tincidunt condimentum.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            child: ResponsiveWidget(
              largeScreen: Row(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    child: ListView.builder(
                        itemCount: features1.length,
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return FeaturesTile(
                            title: features1[index].getTitle(),
                            description: features1[index].getDesc(),
                          );
                        }),
                  ),
                  Container(
                    height: 650,
                    width: MediaQuery.of(context).size.width / 3,
                    child: ListView.builder(
                        itemCount: screenshots.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                              margin: EdgeInsets.symmetric(horizontal: 40),
                              child: Image.asset("assets/" + screenshots[index]));
                        }),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    child: ListView.builder(
                        itemCount: features2.length,
                        physics: ClampingScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return FeaturesTile(
                            title: features2[index].getTitle(),
                            description: features2[index].getDesc(),
                          );
                        }),
                  ),
                ],
              ),
              smallScreen: Column(
                children: <Widget>[
                  Container(
                    child: ListView.builder(
                        itemCount: features1.length,
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return FeaturesTile(
                            title: features1[index].getTitle(),
                            description: features1[index].getDesc(),
                          );
                        }),
                  ),
                  SizedBox(
                    height: 650,
                    width: 350,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: screenshots.length,
                        itemBuilder: (context, index) {
                          return Image.asset("assets/" + screenshots[index]);
                        }),
                  ),
                  Container(
                    child: ListView.builder(
                        itemCount: features2.length,
                        physics: ClampingScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return FeaturesTile(
                            title: features2[index].getTitle(),
                            description: features2[index].getDesc(),
                          );
                        }),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class FeaturesTile extends StatelessWidget {
  String title, description;

  FeaturesTile({this.title, this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: <Widget>[
          Image.asset(
            "assets/test.png",
            width: 40,
            height: 40,
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Color(0xCC262626)),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
