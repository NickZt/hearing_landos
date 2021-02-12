import 'package:flutter/material.dart';

import '../base_widgets/OneHeader.dart';
import '../base_widgets/ResponsiveWidget.dart';
import 'widgets/Bottom.dart';
import 'widgets/Features.dart';
import 'widgets/AppFeaturesList.dart';
import 'widgets/Footer.dart';
import 'widgets/TestimonialsWidgets.dart';
import 'widgets/WatchVideo.dart';

class LandingPage extends StatefulWidget {
  LandingPage({Key key}) : super(key: key);

  @override
  _LandingPageState createState() {
    return _LandingPageState();
  }
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            child: Column(
              children: <Widget>[
                OneHeader(),
                SecondHeader(),
                AppFeaturesList(),
                FeatureSlider(),
                WatchVideo(),
                Testimonial(),
                Bottom(),
                BelowBottom(),
                Footer()
              ],
            )),
      ),
    );
  }
}




class OneHeader extends StatelessWidget {
  OneHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      padding: EdgeInsets.only(bottom: 50, top: 70),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [const Color(0xffABDCFF), const Color(0xff0396FF)])),
      child: ResponsiveWidget(
        largeScreen: Container(
          width: MediaQuery.of(context).size.width > 1000
              ? 1000
              : MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Row(
            children: <Widget>[
              Container(
                  width: MediaQuery.of(context).size.width > 1000
                      ? 500
                      : MediaQuery.of(context).size.width / 2,
                  child: OneHeaderL()),
              Container(
                  width: MediaQuery.of(context).size.width > 1000
                      ? 500
                      : MediaQuery.of(context).size.width / 2,
                  child: OneHeaderR(
                    assetPath: "header_screenshot.png",
                    fixedSize: true,
                  ))
            ],
          ),
        ),
        smallScreen: Column(
          children: <Widget>[
            Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: OneHeaderL()),
            OneHeaderR(
              assetPath: "header_screenshot.png",
              fixedSize: false,
            )
          ],
        ),
      ),
    );
  }
}

