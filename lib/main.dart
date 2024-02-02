import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:theme_extensions/config/localization/generated/l10n.dart';
import 'package:theme_extensions/config/theme/app_theme_provider.dart';
import 'package:theme_extensions/config/theme/extensions/app_theme_extension.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AppThemeProvider(),
      builder: (context, _) => MaterialApp(
        title: 'Flutter Demo',
        theme: AppThemeProvider.light,
        darkTheme: AppThemeProvider.dark,
        themeMode: context.watch<AppThemeProvider>().themeMode,
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [

          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          AppLocalizations.delegate,
        ],
       // locale: const Locale('es_ES'),
      // locale: const Locale('es_CR'),
       //  locale: const Locale('es_PA'),
      //  locale: const Locale('en'),

        supportedLocales: AppLocalizations.delegate.supportedLocales,
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void updateThemeMode(ThemeMode themeMode) {
    context.read<AppThemeProvider>().themeMode = themeMode;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.theme.appColors.primary20,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Text(
                 AppLocalizations.current.pageHomeConfirm,
                 style: context.theme.textTheme.displayLarge
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () => updateThemeMode(ThemeMode.light),
                  child: Text('Light',
                      style:
                          TextStyle(color: context.theme.appColors.primary20)),
                ),
                TextButton(
                  onPressed: () => updateThemeMode(ThemeMode.dark),
                  child: const Text('Dark'),
                ),
                TextButton(
                  onPressed: () => updateThemeMode(ThemeMode.system),
                  child: const Text('System'),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text( AppLocalizations.current.pageHomeWelcome("John")),
            Text( AppLocalizations.current.pageHomeWelcomeRole("other")),
            Text( AppLocalizations.current.pageNotificationsCount(5)),
            Text( AppLocalizations.current.pageHomeWelcomeFullName("John", "Doe")),
            /// otra forma de llamar la internalizacion
            Text( AppLocalizations.of(context).pageHomeWelcomeGender("female")),

            Text( AppLocalizations.current.commonTotalAmount(125750.00)),
            Text( AppLocalizations.current.commonCurrentDateTime(DateTime.now(), DateTime.now())),
            Text( AppLocalizations.current.commonCustomDateFormat(DateTime.now())),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        backgroundColor: context.theme.appColors.primary20,
        foregroundColor: context.theme.appColors.primary20,
        child: const Icon(Icons.add),
      ),
    );
  }
}
