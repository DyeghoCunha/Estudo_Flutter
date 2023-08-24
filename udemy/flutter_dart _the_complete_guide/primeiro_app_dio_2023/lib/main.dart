

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:primeiro_app_dio_2023/pages/login_page.dart';

import 'pages/home_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.teal, textTheme: GoogleFonts.pacificoTextTheme()),
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const LoginPage();
  }
}

