import 'package:flutter/material.dart';
import 'package:h/Add/Theme/theme.dart';
class AppDrawer extends StatelessWidget{
  
  const AppDrawer ({super.key});
  @override
  Widget build(BuildContext context) {
    final telg=Colors.blueGrey;
   return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        Container(
          
          height: 83,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(

          ),
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
Icon(Icons.settings,size: 50,color: Color(0xFF2AABEE),),
            ],
          ),
      
        ),
        draweritem(context, icon: Icons.settings, tittle: 'Settings', onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>Themee())))
      ],
    ),
   );
  }
  Widget draweritem(
    BuildContext context,{
      required IconData icon,
required String tittle,
required VoidCallback onTap,
    }){
      return ListTile(
        leading: Icon(icon,color: Colors.black,),
        title: Text(tittle),
        onTap: onTap,
        horizontalTitleGap: 8,
      );
    }
  

}