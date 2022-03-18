import 'package:azkar_app/screens/about_screen.dart';
import 'package:azkar_app/screens/azkar_screen.dart';
import 'package:azkar_app/screens/launch_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // localizationsDelegates: [
      //   // GlobalMaterialLocalizations.delegate,
      // ],
      // supportedLocales: [
      //   Locale('ar'),
      // ],
      // locale: Locale('ar'),
      debugShowCheckedModeBanner: false,
      initialRoute: '/launch_screen',
      routes: {
        '/launch_screen': (context) => LaunchScreen(),
        '/azkar_screen': (context) => AzkarScreen(),
        '/about_screen': (context) => AboutScreen(),
      },
    );
  }
}
