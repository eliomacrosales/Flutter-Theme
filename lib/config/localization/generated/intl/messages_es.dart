// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a es locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'es';

  static String m0(date, time) => "Date: ${date} Time: ${time}";

  static String m1(date) => "Custom date format: ${date}";

  static String m2(total) => "Total: ${total}";

  static String m3(name) => "Bienvenido ${name}";

  static String m4(lastName, firstName) =>
      "Bienvenido ${lastName} ${firstName}";

  static String m5(gender) =>
      "${Intl.gender(gender, female: 'Hola mujer!', male: 'Hola hombre!', other: 'Hola otro!')}";

  static String m6(role) => "${Intl.select(role, {
            'admin': 'Hola administrado!',
            'manager': 'Hola manager!',
            'other': 'Hola visitante!',
          })}";

  static String m7(howMany) =>
      "${Intl.plural(howMany, one: '1 mensaje', other: '${howMany} mensajes')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "commonCurrentDateTime": m0,
        "commonCustomDateFormat": m1,
        "commonTotalAmount": m2,
        "pageHomeConfirm":
            MessageLookupByLibrary.simpleMessage("Confirmado Español general"),
        "pageHomeWelcome": m3,
        "pageHomeWelcomeFullName": m4,
        "pageHomeWelcomeGender": m5,
        "pageHomeWelcomeRole": m6,
        "pageNotificationsCount": m7
      };
}
