import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
              'You have pushed the button this many times:',
                 style: context.theme.textTheme.displayLarge
            ),
            Text('$_counter'),
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
            )
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
