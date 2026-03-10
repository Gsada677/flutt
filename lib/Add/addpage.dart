import 'dart:async';

import 'package:flutter/material.dart';
   class Addpage extends StatefulWidget{
    
    const Addpage ({super.key});
    
    
    
      @override
      State<StatefulWidget> createState() =>_Addpage();
         }
   class _Addpage extends State<Addpage>{
    bool isPressed =false;
    
    late Timer _timer;
    late TextEditingController _controller;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('add page initState');
    _timer=Timer.periodic(const Duration(seconds: 1),(_){
      final date=DateTime.now();
      print('{$date.minute}:{$date.second}');
        });
        _controller=TextEditingController();
  }



     @override
     Widget build(BuildContext context) {
      print('add page build');
    return Scaffold(
      appBar: AppBar(
        title: Text('новая задача'),
      ),
      body: Column(
        children: [
TextField(
  controller: _controller,
  decoration: InputDecoration(
    labelText: 'название задачи',
    border: OutlineInputBorder()
  ),
),
SizedBox(height: 400,),

   Container(
  
    width: double.infinity,
    height: 60,
    alignment: Alignment.bottomCenter,
    margin: EdgeInsets.all(16),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(14),
      gradient: LinearGradient(
        colors: [
          Color(0xFF4FACFE),
          Color(0xFF4FACFE),
         
        ],
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.blue.withOpacity(0.4),
          blurRadius: 10,
          offset: Offset(0, 5),
        ),
      ],
    ),
    child:Center(
      
      child: Text(
        "Сохранить",
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  ),
        ],
),

        
      );
    
      

    
    
  }
  @override
  void didUpdateWidget(covariant Addpage oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print('ddi');
  }
  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print('ghd');
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('dispose');
  }

   }
   
   