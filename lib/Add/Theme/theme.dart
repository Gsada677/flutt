import 'package:flutter/material.dart';
import 'package:h/Add/Theme/Home.dart';

class Theme extends StatefulWidget{
  const Theme ({super.key});
  
  @override
  State<Theme> createState() => _Theme();
 
  
}
class _Theme extends State<Theme>{
  ThemeMode themeMode = ThemeMode.light;
  void toggleTheme(){
    setState(() {
      themeMode == ThemeMode.light?ThemeMode.dark:ThemeMode.light;
    });
  }
  
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    title: 'Theme Mode',
    themeMode: themeMode,
    theme: ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.blue,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colors.blue,
      )
    ),
    darkTheme: ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.deepPurpleAccent,

      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colors.deepPurpleAccent,
      )
    ),
    home: Home(onToggle: toggleTheme, themeMode: themeMode),
   );
  }
}