import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade300,
    focusColor: Colors.black,
    hoverColor: Colors.black38,
    textTheme: TextTheme(
      titleSmall: GoogleFonts.poppins(
          fontSize: 20, fontWeight: FontWeight.w800, color: Colors.black),
      titleMedium: GoogleFonts.poppins(
          fontSize: 20, fontWeight: FontWeight.w600, color: Colors.grey),
      titleLarge: GoogleFonts.poppins(
          fontSize: 32, fontWeight: FontWeight.w900, color: Colors.black),
      headlineSmall: GoogleFonts.poppins(
          fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black),
    ),
    iconTheme: IconThemeData(color: Colors.black),
    cardColor: Colors.white);

ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Color.fromRGBO(0, 0, 0, 1),
    focusColor: Colors.white,
    hoverColor: Colors.white38,
    textTheme: TextTheme(
      titleSmall: GoogleFonts.poppins(
          fontSize: 20, fontWeight: FontWeight.w800, color: Colors.white),
      titleMedium: GoogleFonts.poppins(
          fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white38),
      titleLarge: GoogleFonts.poppins(
          fontSize: 32, fontWeight: FontWeight.w900, color: Colors.white),
      headlineSmall: GoogleFonts.poppins(
          fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
    ),
    iconTheme: IconThemeData(color: Colors.white),
    cardColor: Color.fromRGBO(28, 28, 30, 1));
