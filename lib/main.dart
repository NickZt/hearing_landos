import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'foreground/landing_page/LandingPage.dart';
import 'utils/SimpleBlocObserver.dart';

void main() {
  //not needed at this app
  // Bloc.observer = SimpleBlocObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: LandingPage(),
      initialRoute: '/',
      routes: {
        '/': (context) => LandingPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
