import 'dart:math';


import 'package:h/Add/Theme/Home.dart';

import 'todo.dart/Toodo.dart';
import 'package:flutter/material.dart';
import 'package:h/Add/addpage.dart';
class MyHomePage extends StatefulWidget {

const MyHomePage ({super.key,});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ThemeMode themeMode = ThemeMode.light;
List<Toodo> tasks=[];
bool isVisible=true;
 late TextEditingController _controller;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('home page initState');
  }
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print('don');
  }
  @override
  Widget build(BuildContext context) {print('tgt');
    return Scaffold(
      appBar: AppBar(
        title: Text('gren'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [

            /*Text(text),
            Visibility(child: Text('to show and hide'),
            visible: isVisible,),
            Container(
              width: 300,
              height: 200,
              color: currentColor,
            ),

           
         TextButton(onPressed: _changeText, child: Text('скрыть'),),*/
  Expanded(child:ListView.builder(itemCount: tasks.length,itemBuilder: (context,index){
  return GestureDetector(
                child: Container(
                  height: 60,
                  margin: const EdgeInsets.only(bottom: 12),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 40, 137, 221),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        tasks[index].isDone
                            ? Icons.check_box
                            : Icons.check_box_outline_blank,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          tasks[index].tittle,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
  );
  },
  ),
  ),
          ],
        ),
        
      ),
    
          
                          
                        
                      
                    
                  
                
              
            
          
        
      
    
    floatingActionButton: FloatingActionButton.extended(
      onPressed: _naviagateToAddPage,
    label: const Text('в избранное'),
      
    
      
    ),
      
    
    

floatingActionButtonLocation:  FloatingActionButtonLocation.centerFloat,

    );
}
 void toggleTheme(){
    setState(() {
      themeMode == ThemeMode.light?ThemeMode.dark:ThemeMode.light;
    });
  }
void _naviagateToAddPage()async{
final result=await Navigator.push<String>(context,MaterialPageRoute(builder: (_)=>const AddPage()));

  
  if (result != null && result.isNotEmpty) {
    setState(() {
      tasks.add(Toodo(tittle: result,isDone: false,Date: DateTime.now().toString()));
    });
    void _naviagateToAddPage()async{
final result=await Navigator.push<String>(context, MaterialPageRoute(builder: (_)=>Home(onToggle: toggleTheme, themeMode: themeMode)));
  }
  }
 
  floatingActionButton: FloatingActionButton.extended(
      onPressed: _naviagateToAddPage,
    label: const Icon(Icons.settings),
      
    
    
  
  
  );
}
}
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






  

