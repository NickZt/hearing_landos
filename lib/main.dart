import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hearing_landos/generated/l10n.dart';

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
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
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
