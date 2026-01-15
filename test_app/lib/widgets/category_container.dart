import 'package:flutter/material.dart';

import '../business_layer/category_class.dart';

class CategoryContainer extends StatelessWidget {
  const CategoryContainer ({super.key, required this.Tapped, required this.category});

final ClsCategory category;
final void Function ()Tapped;

@override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: Tapped,
      child: Container(
      height: 20,
        width: 20,
        decoration: BoxDecoration(color: category.backCol,boxShadow: [
          BoxShadow(color: Colors.black,offset:Offset(0.2, 0.2),blurRadius: 2 )],borderRadius: BorderRadiusGeometry.circular(25)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(category.icon,color: category.forIconCol,size: 50,),
            Text(category.name,style: TextStyle(color: category.forTitleCol),)
          ],
        ),
      ),

    );
  }
}
