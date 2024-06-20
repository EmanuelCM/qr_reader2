import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Colors.deepPurple;

  static final ThemeData lightThema = ThemeData.light().copyWith(
      //color primario
      primaryColor: primaryColor,

      //Appbar Theme
      appBarTheme: const AppBarTheme(
        color: primaryColor,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
        elevation: 0,
        centerTitle: true,
      ),

      // Color a los botones de Texto
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primaryColor)),

      // diseño de boton
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primaryColor, // cambiar fondo
        foregroundColor: Colors.white,
        shape: CircleBorder(), // Cambia las lineas
        elevation: 5,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        shape: const StadiumBorder(),
        elevation: 0,
      )),

      // configuracion thema de forms
      inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: primaryColor, fontSize: 18),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primaryColor),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10))),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primaryColor),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10))),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10))),
      ),
      iconButtonTheme: IconButtonThemeData(
          style: ButtonStyle(
        iconColor: WidgetStateProperty.all<Color>(Colors.white),
      )));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      //color primario
      primaryColor: primaryColor,
      //Appbar Theme
      appBarTheme: const AppBarTheme(
        color: primaryColor,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
        elevation: 0,
      ),
      scaffoldBackgroundColor: Colors.black,
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: primaryColor),
      ));
}

class ThemeSelector {
  static ThemeData getThemeByTime() {
    var horaActual = DateTime.now().hour;

    if (horaActual >= 7 && horaActual < 18) {
      return AppTheme.lightThema;
    } else {
      return AppTheme.darkTheme;
    }
  }
}
