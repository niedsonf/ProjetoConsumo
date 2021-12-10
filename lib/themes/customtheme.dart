import 'dart:ui';

import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get darkMode {
    return ThemeData(
      scaffoldBackgroundColor: const Color(0xFF1B1766),

      snackBarTheme: const SnackBarThemeData(
          backgroundColor: Colors.black, actionTextColor: Colors.cyanAccent),


      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFFCFCCFF),
        foregroundColor: Color(0xFF1B1766),
        
      ), 
      
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: const TextStyle(color: Color(0xFFCFCCFF)),
        contentPadding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
        //floatingLabelStyle: TextStyle(fontSize:8),
        hintStyle: const TextStyle(fontSize: 16, color: Color(0xFFCFCCFF)),
        filled: true,
        fillColor: const Color(0xFF1B1766),
        enabledBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
        focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomLeft: Radius.circular(16),
                topLeft: Radius.circular(28),
                bottomRight: Radius.circular(28))),
      ),

      



      iconTheme: const IconThemeData(color: Color(0xFFCFCCFF)),

      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Color(0xFF2D26A6),
        foregroundColor: Color(0xFFCFCCFF),
        elevation: 2,
      ),


      bottomAppBarTheme: const BottomAppBarTheme(
          shape: CircularNotchedRectangle(),
          color: Color(0xFF1B1766)),
    );
  }
}
