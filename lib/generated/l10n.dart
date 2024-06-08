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
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Find your favourite events here`
  String get findYourFavouriteEventsHere {
    return Intl.message(
      'Find your favourite events here',
      name: 'findYourFavouriteEventsHere',
      desc: '',
      args: [],
    );
  }

  /// `Lorem ipsum dolor sit amet, consectetur adipiscing elit.`
  String get loremIpsumDolorSitAmetConsecteturAdipiscingElit {
    return Intl.message(
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      name: 'loremIpsumDolorSitAmetConsecteturAdipiscingElit',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Find your nearby event here`
  String get findYourNearbyEventHere {
    return Intl.message(
      'Find your nearby event here',
      name: 'findYourNearbyEventHere',
      desc: '',
      args: [],
    );
  }

  /// `Update your upcoming event here`
  String get updateYourUpcomingEventHere {
    return Intl.message(
      'Update your upcoming event here',
      name: 'updateYourUpcomingEventHere',
      desc: '',
      args: [],
    );
  }

  /// `Welcome Back!`
  String get welcomeBack {
    return Intl.message(
      'Welcome Back!',
      name: 'welcomeBack',
      desc: '',
      args: [],
    );
  }

  /// `Use Credentials to acees your account`
  String get useCredentialsToAceesYourAccount {
    return Intl.message(
      'Use Credentials to acees your account',
      name: 'useCredentialsToAceesYourAccount',
      desc: '',
      args: [],
    );
  }

  /// `Enter Username`
  String get enterUsername {
    return Intl.message(
      'Enter Username',
      name: 'enterUsername',
      desc: '',
      args: [],
    );
  }

  /// `Enter password`
  String get enterPassword {
    return Intl.message(
      'Enter password',
      name: 'enterPassword',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password ?`
  String get forgotPassword {
    return Intl.message(
      'Forgot Password ?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `OR`
  String get or {
    return Intl.message(
      'OR',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `Login with Facebook`
  String get loginWithFacebook {
    return Intl.message(
      'Login with Facebook',
      name: 'loginWithFacebook',
      desc: '',
      args: [],
    );
  }

  /// `Login with Google`
  String get loginWithGoogle {
    return Intl.message(
      'Login with Google',
      name: 'loginWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Don’t have an account?`
  String get dontHaveAnAccount {
    return Intl.message(
      'Don’t have an account?',
      name: 'dontHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Signup`
  String get signup {
    return Intl.message(
      'Signup',
      name: 'signup',
      desc: '',
      args: [],
    );
  }

  /// `Create an Account`
  String get createAnAccount {
    return Intl.message(
      'Create an Account',
      name: 'createAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Please fill this detail to create an account`
  String get pleaseFillThisDetailToCreateAnAccount {
    return Intl.message(
      'Please fill this detail to create an account',
      name: 'pleaseFillThisDetailToCreateAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Enter email`
  String get enterEmail {
    return Intl.message(
      'Enter email',
      name: 'enterEmail',
      desc: '',
      args: [],
    );
  }

  /// `Sign up with Facebool`
  String get signUpWithFacebool {
    return Intl.message(
      'Sign up with Facebool',
      name: 'signUpWithFacebool',
      desc: '',
      args: [],
    );
  }

  /// `Sign up with Google`
  String get signUpWithGoogle {
    return Intl.message(
      'Sign up with Google',
      name: 'signUpWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get alreadyHaveAnAccount {
    return Intl.message(
      'Already have an account?',
      name: 'alreadyHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Create username`
  String get createUsername {
    return Intl.message(
      'Create username',
      name: 'createUsername',
      desc: '',
      args: [],
    );
  }

  /// `Photo profile can be changed at any time`
  String get photoProfileCanBeChangedAtAnyTime {
    return Intl.message(
      'Photo profile can be changed at any time',
      name: 'photoProfileCanBeChangedAtAnyTime',
      desc: '',
      args: [],
    );
  }

  /// `Choose your photo profile`
  String get chooseYourPhotoProfile {
    return Intl.message(
      'Choose your photo profile',
      name: 'chooseYourPhotoProfile',
      desc: '',
      args: [],
    );
  }

  /// `Username can be changed at any time`
  String get usernameCanBeChangedAtAnyTime {
    return Intl.message(
      'Username can be changed at any time',
      name: 'usernameCanBeChangedAtAnyTime',
      desc: '',
      args: [],
    );
  }

  /// `Choose your favorite event`
  String get chooseYourFavoriteEvent {
    return Intl.message(
      'Choose your favorite event',
      name: 'chooseYourFavoriteEvent',
      desc: '',
      args: [],
    );
  }

  /// `Get personalized event recomendation.`
  String get getPersonalizedEventRecomendation {
    return Intl.message(
      'Get personalized event recomendation.',
      name: 'getPersonalizedEventRecomendation',
      desc: '',
      args: [],
    );
  }

  /// `Finish`
  String get finish {
    return Intl.message(
      'Finish',
      name: 'finish',
      desc: '',
      args: [],
    );
  }

  /// `Business`
  String get business {
    return Intl.message(
      'Business',
      name: 'business',
      desc: '',
      args: [],
    );
  }

  /// `Community`
  String get community {
    return Intl.message(
      'Community',
      name: 'community',
      desc: '',
      args: [],
    );
  }

  /// `Music & Entertaiment`
  String get musicEntertaiment {
    return Intl.message(
      'Music & Entertaiment',
      name: 'musicEntertaiment',
      desc: '',
      args: [],
    );
  }

  /// `Health`
  String get health {
    return Intl.message(
      'Health',
      name: 'health',
      desc: '',
      args: [],
    );
  }

  /// `Food & drink`
  String get foodDrink {
    return Intl.message(
      'Food & drink',
      name: 'foodDrink',
      desc: '',
      args: [],
    );
  }

  /// `Family & Education`
  String get familyEducation {
    return Intl.message(
      'Family & Education',
      name: 'familyEducation',
      desc: '',
      args: [],
    );
  }

  /// `Sport`
  String get sport {
    return Intl.message(
      'Sport',
      name: 'sport',
      desc: '',
      args: [],
    );
  }

  /// `Fashion`
  String get fashion {
    return Intl.message(
      'Fashion',
      name: 'fashion',
      desc: '',
      args: [],
    );
  }

  /// `Film & Media`
  String get filmMedia {
    return Intl.message(
      'Film & Media',
      name: 'filmMedia',
      desc: '',
      args: [],
    );
  }

  /// `Home & Lifestyle`
  String get homeLifestyle {
    return Intl.message(
      'Home & Lifestyle',
      name: 'homeLifestyle',
      desc: '',
      args: [],
    );
  }

  /// `Design`
  String get design {
    return Intl.message(
      'Design',
      name: 'design',
      desc: '',
      args: [],
    );
  }

  /// `Gaming`
  String get gaming {
    return Intl.message(
      'Gaming',
      name: 'gaming',
      desc: '',
      args: [],
    );
  }

  /// `Science & Tech`
  String get scienceTech {
    return Intl.message(
      'Science & Tech',
      name: 'scienceTech',
      desc: '',
      args: [],
    );
  }

  /// `School & Education`
  String get schoolEducation {
    return Intl.message(
      'School & Education',
      name: 'schoolEducation',
      desc: '',
      args: [],
    );
  }

  /// `Holiday`
  String get holiday {
    return Intl.message(
      'Holiday',
      name: 'holiday',
      desc: '',
      args: [],
    );
  }

  /// `Travel`
  String get travel {
    return Intl.message(
      'Travel',
      name: 'travel',
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
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
