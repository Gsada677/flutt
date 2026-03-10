import 'package:flutter/material.dart';
import 'package:h/Add/addpage.dart';

class AddFavotite extends StatelessWidget{
  bool isPressed = false;
 final List<Map<String,dynamic>> items=[
    {'name':'сделать домашнее задание' , 'icon':Icon(Icons.check)},
    {'name':'сделать домашнее задание' , 'icon':Icon(Icons.check)},
    {'name':'сделать домашнее задание' , 'icon':Icon(Icons.check)},
        {'name':'сделать домашнее задание' , 'icon':Icon(Icons.check),},
     ];
       @override
  Widget build(BuildContext context) {
    
  return Scaffold(
    
    appBar: AppBar(title: Text('мои задачи'),centerTitle: true,),
    body: Column(
      
children: [
  Container(
    width: double.infinity,
    height: 1,
    color: Colors.black,
  ),
Expanded(child: ListView.builder(itemCount: items.length,itemBuilder: (context,index){
  SizedBox(height: 6,);
    final item = items[index];
return Container(
 margin: EdgeInsets.symmetric(vertical: 5),
 padding: EdgeInsets.symmetric(vertical: 5),
    width: double.infinity,
    height: 80,
    alignment: Alignment.bottomCenter,
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
  child: ListTile(
    leading: CircleAvatar(
      child: item['icon'],
    ),
    title: Text(item['name']),
  ),
    ),
);


  

},


),


),
GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => Addpage()),
    );
  },
  child: Container(
  
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
        "в избранное",
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  ),
),
],
),
    


 


    


  
  




  );



    
  
    
}

}