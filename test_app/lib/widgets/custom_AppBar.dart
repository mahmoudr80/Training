

import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return   AppBar(
        title:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Icon(Icons.check,color:Color(0xff3a0ca3),size: 30 ,fontWeight: FontWeight.w600,),
          Text("estimate",style: TextStyle(color: Color(0xff3a0ca3),height: 24,fontSize: 20,fontWeight: FontWeight.w600),)
        ],),
      centerTitle: true ,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
