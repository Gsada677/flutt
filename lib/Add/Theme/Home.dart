import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  final VoidCallback onToggle;
  final ThemeMode themeMode;
  const Home ({super.key,
  required this.onToggle,required this.themeMode});


  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: Text('ThemeData && ThemeMode'),
    ),
    floatingActionButton: FloatingActionButton(onPressed: onToggle,
    child: Icon(
      themeMode==ThemeMode.light?Icons.toggle_off:Icons.toggle_on,

    ),
    ),
   );
  }}