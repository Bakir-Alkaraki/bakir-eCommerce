import 'package:bakir_ecommerce/app/screens/auth_screen.dart';
import 'package:bakir_ecommerce/components/declarations.dart';
import 'package:bakir_ecommerce/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test',
      theme: ThemeData(
        scaffoldBackgroundColor: Declarations.backgroundColor,
          colorScheme: const ColorScheme.light(
              primary: Declarations.secondaryColor
          ),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black
          )
        )
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: const AuthScreen()
    );
  }
}
