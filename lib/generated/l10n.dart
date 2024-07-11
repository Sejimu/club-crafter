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
  String get onboardingFindYourFavouriteEventsHere {
    return Intl.message(
      'Find your favourite events here',
      name: 'onboardingFindYourFavouriteEventsHere',
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
  String get buttonNext {
    return Intl.message(
      'Next',
      name: 'buttonNext',
      desc: '',
      args: [],
    );
  }

  /// `Find your nearby event here`
  String get onboardingFindYourNearbyEventHere {
    return Intl.message(
      'Find your nearby event here',
      name: 'onboardingFindYourNearbyEventHere',
      desc: '',
      args: [],
    );
  }

  /// `Update your upcoming event here`
  String get onboardingUpdateYourUpcomingEventHere {
    return Intl.message(
      'Update your upcoming event here',
      name: 'onboardingUpdateYourUpcomingEventHere',
      desc: '',
      args: [],
    );
  }

  /// `Welcome Back!`
  String get loginWelcomeBack {
    return Intl.message(
      'Welcome Back!',
      name: 'loginWelcomeBack',
      desc: '',
      args: [],
    );
  }

  /// `Use Credentials to acees your account`
  String get loginUseCredentialsToAceesYourAccount {
    return Intl.message(
      'Use Credentials to acees your account',
      name: 'loginUseCredentialsToAceesYourAccount',
      desc: '',
      args: [],
    );
  }

  /// `Enter Username`
  String get textFieldEnterUsername {
    return Intl.message(
      'Enter Username',
      name: 'textFieldEnterUsername',
      desc: '',
      args: [],
    );
  }

  /// `Enter password`
  String get textFieldEnterPassword {
    return Intl.message(
      'Enter password',
      name: 'textFieldEnterPassword',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password ?`
  String get buttonForgotPassword {
    return Intl.message(
      'Forgot Password ?',
      name: 'buttonForgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get buttonLogin {
    return Intl.message(
      'Login',
      name: 'buttonLogin',
      desc: '',
      args: [],
    );
  }

  /// `OR`
  String get loginOr {
    return Intl.message(
      'OR',
      name: 'loginOr',
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
  String get loginDontHaveAnAccount {
    return Intl.message(
      'Don’t have an account?',
      name: 'loginDontHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Signup`
  String get buttonSignup {
    return Intl.message(
      'Signup',
      name: 'buttonSignup',
      desc: '',
      args: [],
    );
  }

  /// `Create an Account`
  String get signUpCreateAnAccount {
    return Intl.message(
      'Create an Account',
      name: 'signUpCreateAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Please fill this detail to create an account`
  String get signUpPleaseFillThisDetailToCreateAnAccount {
    return Intl.message(
      'Please fill this detail to create an account',
      name: 'signUpPleaseFillThisDetailToCreateAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Enter email`
  String get textFieldEnterEmail {
    return Intl.message(
      'Enter email',
      name: 'textFieldEnterEmail',
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
  String get signUpAlreadyHaveAnAccount {
    return Intl.message(
      'Already have an account?',
      name: 'signUpAlreadyHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Create username`
  String get introCreateUsername {
    return Intl.message(
      'Create username',
      name: 'introCreateUsername',
      desc: '',
      args: [],
    );
  }

  /// `Photo profile can be changed at any time`
  String get introPhotoProfileCanBeChangedAtAnyTime {
    return Intl.message(
      'Photo profile can be changed at any time',
      name: 'introPhotoProfileCanBeChangedAtAnyTime',
      desc: '',
      args: [],
    );
  }

  /// `Choose your photo profile`
  String get introChooseYourPhotoProfile {
    return Intl.message(
      'Choose your photo profile',
      name: 'introChooseYourPhotoProfile',
      desc: '',
      args: [],
    );
  }

  /// `Username can be changed at any time`
  String get introUsernameCanBeChangedAtAnyTime {
    return Intl.message(
      'Username can be changed at any time',
      name: 'introUsernameCanBeChangedAtAnyTime',
      desc: '',
      args: [],
    );
  }

  /// `Choose your favorite event`
  String get introChooseYourFavoriteEvent {
    return Intl.message(
      'Choose your favorite event',
      name: 'introChooseYourFavoriteEvent',
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
  String get buttonFinish {
    return Intl.message(
      'Finish',
      name: 'buttonFinish',
      desc: '',
      args: [],
    );
  }

  /// `Business`
  String get introBusiness {
    return Intl.message(
      'Business',
      name: 'introBusiness',
      desc: '',
      args: [],
    );
  }

  /// `Community`
  String get introCommunity {
    return Intl.message(
      'Community',
      name: 'introCommunity',
      desc: '',
      args: [],
    );
  }

  /// `Music & Entertaiment`
  String get introMusicEntertaiment {
    return Intl.message(
      'Music & Entertaiment',
      name: 'introMusicEntertaiment',
      desc: '',
      args: [],
    );
  }

  /// `Health`
  String get introHealth {
    return Intl.message(
      'Health',
      name: 'introHealth',
      desc: '',
      args: [],
    );
  }

  /// `Food & drink`
  String get introFoodDrink {
    return Intl.message(
      'Food & drink',
      name: 'introFoodDrink',
      desc: '',
      args: [],
    );
  }

  /// `Family & Education`
  String get introFamilyEducation {
    return Intl.message(
      'Family & Education',
      name: 'introFamilyEducation',
      desc: '',
      args: [],
    );
  }

  /// `Sport`
  String get introSport {
    return Intl.message(
      'Sport',
      name: 'introSport',
      desc: '',
      args: [],
    );
  }

  /// `Fashion`
  String get introFashion {
    return Intl.message(
      'Fashion',
      name: 'introFashion',
      desc: '',
      args: [],
    );
  }

  /// `Film & Media`
  String get introFilmMedia {
    return Intl.message(
      'Film & Media',
      name: 'introFilmMedia',
      desc: '',
      args: [],
    );
  }

  /// `Home & Lifestyle`
  String get introHomeLifestyle {
    return Intl.message(
      'Home & Lifestyle',
      name: 'introHomeLifestyle',
      desc: '',
      args: [],
    );
  }

  /// `Design`
  String get introDesign {
    return Intl.message(
      'Design',
      name: 'introDesign',
      desc: '',
      args: [],
    );
  }

  /// `Gaming`
  String get introGaming {
    return Intl.message(
      'Gaming',
      name: 'introGaming',
      desc: '',
      args: [],
    );
  }

  /// `Science & Tech`
  String get introScienceTech {
    return Intl.message(
      'Science & Tech',
      name: 'introScienceTech',
      desc: '',
      args: [],
    );
  }

  /// `School & Education`
  String get introSchoolEducation {
    return Intl.message(
      'School & Education',
      name: 'introSchoolEducation',
      desc: '',
      args: [],
    );
  }

  /// `Holiday`
  String get introHoliday {
    return Intl.message(
      'Holiday',
      name: 'introHoliday',
      desc: '',
      args: [],
    );
  }

  /// `Travel`
  String get introTravel {
    return Intl.message(
      'Travel',
      name: 'introTravel',
      desc: '',
      args: [],
    );
  }

  /// `Location`
  String get homeLocation {
    return Intl.message(
      'Location',
      name: 'homeLocation',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get homeSearch {
    return Intl.message(
      'Search',
      name: 'homeSearch',
      desc: '',
      args: [],
    );
  }

  /// `Upcoming Events`
  String get homeUpcomingEvents {
    return Intl.message(
      'Upcoming Events',
      name: 'homeUpcomingEvents',
      desc: '',
      args: [],
    );
  }

  /// `See All`
  String get buttonSeeAll {
    return Intl.message(
      'See All',
      name: 'buttonSeeAll',
      desc: '',
      args: [],
    );
  }

  /// `Join`
  String get buttonJoin {
    return Intl.message(
      'Join',
      name: 'buttonJoin',
      desc: '',
      args: [],
    );
  }

  /// `Popular Now`
  String get homePopularNow {
    return Intl.message(
      'Popular Now',
      name: 'homePopularNow',
      desc: '',
      args: [],
    );
  }

  /// `Recommendations for you`
  String get homeRecommendationsForYou {
    return Intl.message(
      'Recommendations for you',
      name: 'homeRecommendationsForYou',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get eventDetailAbout {
    return Intl.message(
      'About',
      name: 'eventDetailAbout',
      desc: '',
      args: [],
    );
  }

  /// `Order`
  String get buttonOrder {
    return Intl.message(
      'Order',
      name: 'buttonOrder',
      desc: '',
      args: [],
    );
  }

  /// `All Tickets`
  String get allTickets {
    return Intl.message(
      'All Tickets',
      name: 'allTickets',
      desc: '',
      args: [],
    );
  }

  /// `Order Summary`
  String get orderSummary {
    return Intl.message(
      'Order Summary',
      name: 'orderSummary',
      desc: '',
      args: [],
    );
  }

  /// `Order Detail`
  String get orderDetail {
    return Intl.message(
      'Order Detail',
      name: 'orderDetail',
      desc: '',
      args: [],
    );
  }

  /// `Fees`
  String get fees {
    return Intl.message(
      'Fees',
      name: 'fees',
      desc: '',
      args: [],
    );
  }

  /// `Subtotal`
  String get subtotal {
    return Intl.message(
      'Subtotal',
      name: 'subtotal',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get total {
    return Intl.message(
      'Total',
      name: 'total',
      desc: '',
      args: [],
    );
  }

  /// `Payment method`
  String get paymentMethod {
    return Intl.message(
      'Payment method',
      name: 'paymentMethod',
      desc: '',
      args: [],
    );
  }

  /// `Favorite`
  String get favoriteFavorite {
    return Intl.message(
      'Favorite',
      name: 'favoriteFavorite',
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
