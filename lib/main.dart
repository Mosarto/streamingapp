import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:streamapp/Screens/Home_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'eFLIX',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
        primarySwatch: Colors.pink,
      ),
      home: HomeScreen(),
    );
  }
}
