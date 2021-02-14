// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `hearing screening audiometer on a smartphone\n Download Now!`
  String get hearing_appDescription {
    return Intl.message(
      'hearing screening audiometer on a smartphone\n Download Now!',
      name: 'hearing_appDescription',
      desc: '',
      args: [],
    );
  }

  /// `Affordable mobile hearing assesment solution for everyone, from children to adults mostly in underserved Areas:`
  String get hearing_appHeading {
    return Intl.message(
      'Affordable mobile hearing assesment solution for everyone, from children to adults mostly in underserved Areas:',
      name: 'hearing_appHeading',
      desc: '',
      args: [],
    );
  }

  /// `so what are you waiting for,\n Download Now`
  String get hearing_closingDescription {
    return Intl.message(
      'so what are you waiting for,\n Download Now',
      name: 'hearing_closingDescription',
      desc: '',
      args: [],
    );
  }

  /// `hearing screening audiometer on a smartphone Was Never This EASY`
  String get hearing_closingTitle {
    return Intl.message(
      'hearing screening audiometer on a smartphone Was Never This EASY',
      name: 'hearing_closingTitle',
      desc: '',
      args: [],
    );
  }

  /// `What are you waiting for? Download today!`
  String get hearing_finaCalltoAction {
    return Intl.message(
      'What are you waiting for? Download today!',
      name: 'hearing_finaCalltoAction',
      desc: '',
      args: [],
    );
  }

  /// `app checked in place ambient noise level to prevent incorrect results, to help self-administration of the test.`
  String get hearing_maindescription {
    return Intl.message(
      'app checked in place ambient noise level to prevent incorrect results, to help self-administration of the test.',
      name: 'hearing_maindescription',
      desc: '',
      args: [],
    );
  }

  /// `Create, Test, and Share`
  String get hearing_maintitle {
    return Intl.message(
      'Create, Test, and Share',
      name: 'hearing_maintitle',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru', countryCode: 'RU'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}