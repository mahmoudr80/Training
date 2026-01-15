import 'package:flutter/material.dart';

class CategoryContainer extends StatelessWidget {
  const CategoryContainer({super.key, this.backColor =Colors.white, this.forColor= Colors.deepPurple,
    required this.cusIcon, required this.cusTitle,  this.titleColor = Colors.grey, required this.Tapped});
final Color backColor;
final Color forColor;
final Color titleColor;
final IconData cusIcon;
final String cusTitle;

final void Function ()Tapped;
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: Tapped,
      child: Container(
      height: 20,
        width: 20,
        decoration: BoxDecoration(color: backColor,boxShadow: [
          BoxShadow(color: Colors.black,offset:Offset(0.2, 0.2),blurRadius: 2 )],borderRadius: BorderRadiusGeometry.circular(25)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(cusIcon,color: forColor,size: 50,),
            Text(cusTitle,style: TextStyle(color: titleColor),)
          ],
        ),
      ),

    );
  }
}
