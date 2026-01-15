
import 'package:flutter/material.dart';

class ButtonNavbar extends StatefulWidget {
  ButtonNavbar({super.key});
 int currentIndex = 0;

  @override
  State<ButtonNavbar> createState() => _ButtonNavbarState();
}

class _ButtonNavbarState extends State<ButtonNavbar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items:[
      BottomNavigationBarItem(icon: Icon(Icons.home,color:widget.currentIndex==0? Colors.deepPurple:Colors.grey,size: 40,),label:"Home"),
      BottomNavigationBarItem(icon: Icon(Icons.calendar_month,color: widget.currentIndex==1? Colors.deepPurple:Colors.grey,size: 40,),label:"Appointments"),
      BottomNavigationBarItem(icon: Icon(Icons.chat,color: widget.currentIndex==2? Colors.deepPurple:Colors.grey,size: 40,),label:"Chat"),
      BottomNavigationBarItem(icon: Icon(Icons.search,color: widget.currentIndex==3? Colors.deepPurple:Colors.grey,size: 40,),label:"Find"),
      BottomNavigationBarItem(icon: Icon(Icons.person,color: widget.currentIndex==4? Colors.deepPurple:Colors.grey,size: 40,),label:"Profile"),
    ],
    onTap: (val){
      setState(() {
        widget.currentIndex = val ;
      });
    },);
  }
}
