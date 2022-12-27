import 'package:basic_parth/Homepage.dart';
import 'package:basic_parth/Login_page.dart';
import 'package:basic_parth/utilities/roudes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Homepage(),
      themeMode:ThemeMode.light,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.cyan,
        fontFamily: GoogleFonts.lato().fontFamily
        // primaryTextTheme: GoogleFonts.latoTextTheme()
      ),
      darkTheme:ThemeData( brightness :Brightness.dark),
      initialRoute: "/",
      routes: {
        "/":(context) =>new  Loginpage(),
        myrouts.homeRoute: (context) =>Homepage(),
        myrouts.loginroute:(context) =>Loginpage(),
      },
    );
  }
}