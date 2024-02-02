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

class AppLocalizations {
  AppLocalizations();

  static AppLocalizations? _current;

  static AppLocalizations get current {
    assert(_current != null,
        'No instance of AppLocalizations was loaded. Try to initialize the AppLocalizations delegate before accessing AppLocalizations.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<AppLocalizations> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = AppLocalizations();
      AppLocalizations._current = instance;

      return instance;
    });
  }

  static AppLocalizations of(BuildContext context) {
    final instance = AppLocalizations.maybeOf(context);
    assert(instance != null,
        'No instance of AppLocalizations present in the widget tree. Did you add AppLocalizations.delegate in localizationsDelegates?');
    return instance!;
  }

  static AppLocalizations? maybeOf(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  /// `Confirmado Español general`
  String get pageHomeConfirm {
    return Intl.message(
      'Confirmado Español general',
      name: 'pageHomeConfirm',
      desc: '',
      args: [],
    );
  }

  /// `Bienvenido {name}`
  String pageHomeWelcome(Object name) {
    return Intl.message(
      'Bienvenido $name',
      name: 'pageHomeWelcome',
      desc: '',
      args: [name],
    );
  }

  /// `Bienvenido {lastName} {firstName}`
  String pageHomeWelcomeFullName(Object lastName, Object firstName) {
    return Intl.message(
      'Bienvenido $lastName $firstName',
      name: 'pageHomeWelcomeFullName',
      desc: '',
      args: [lastName, firstName],
    );
  }

  /// `{gender, select, male {Hola hombre!} female {Hola mujer!} other {Hola otro!}}`
  String pageHomeWelcomeGender(String gender) {
    return Intl.gender(
      gender,
      male: 'Hola hombre!',
      female: 'Hola mujer!',
      other: 'Hola otro!',
      name: 'pageHomeWelcomeGender',
      desc: '',
      args: [gender],
    );
  }

  /// `{role, select, admin {Hola administrado!} manager {Hola manager!} other {Hola visitante!}}`
  String pageHomeWelcomeRole(Object role) {
    return Intl.select(
      role,
      {
        'admin': 'Hola administrado!',
        'manager': 'Hola manager!',
        'other': 'Hola visitante!',
      },
      name: 'pageHomeWelcomeRole',
      desc: '',
      args: [role],
    );
  }

  /// `{howMany, plural, one{1 mensaje} other{{howMany} mensajes}}`
  String pageNotificationsCount(num howMany) {
    return Intl.plural(
      howMany,
      one: '1 mensaje',
      other: '$howMany mensajes',
      name: 'pageNotificationsCount',
      desc: '',
      args: [howMany],
    );
  }

  /// `Total: {total}`
  String commonTotalAmount(double total) {
    final NumberFormat totalNumberFormat = NumberFormat.currency(
        locale: Intl.getCurrentLocale(), symbol: '€', decimalDigits: 2);
    final String totalString = totalNumberFormat.format(total);

    return Intl.message(
      'Total: $totalString',
      name: 'commonTotalAmount',
      desc: '',
      args: [totalString],
    );
  }

  /// `Date: {date} Time: {time}`
  String commonCurrentDateTime(DateTime date, DateTime time) {
    final DateFormat dateDateFormat = DateFormat.yMd(Intl.getCurrentLocale());
    final String dateString = dateDateFormat.format(date);

    final DateFormat timeDateFormat = DateFormat.Hm(Intl.getCurrentLocale());
    final String timeString = timeDateFormat.format(time);

    return Intl.message(
      'Date: $dateString Time: $timeString',
      name: 'commonCurrentDateTime',
      desc: '',
      args: [dateString, timeString],
    );
  }

  /// `Custom date format: {date}`
  String commonCustomDateFormat(DateTime date) {
    final DateFormat dateDateFormat =
        DateFormat('EEE, M/d/y', Intl.getCurrentLocale());
    final String dateString = dateDateFormat.format(date);

    return Intl.message(
      'Custom date format: $dateString',
      name: 'commonCustomDateFormat',
      desc: '',
      args: [dateString],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'es'),
      Locale.fromSubtags(languageCode: 'es', countryCode: 'CR'),
      Locale.fromSubtags(languageCode: 'es', countryCode: 'PA'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<AppLocalizations> load(Locale locale) => AppLocalizations.load(locale);
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
