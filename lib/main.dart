import 'package:flutter/material.dart';
import 'package:grocery_market_app/pages/sign_up_page.dart';
 
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home:  SignUpPage()
    );
  }
}
 