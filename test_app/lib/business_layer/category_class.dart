

import 'package:flutter/material.dart';
import 'package:test_app/global/en_category.dart';

class ClsCategory{
   String name = "";
   IconData icon = Icons.error;
  final EnCategory enCategory;
  Color backCol;
  Color forIconCol;
  Color forTitleCol;

  ClsCategory({ required this.enCategory,this.backCol=Colors.white,
    this.forIconCol=Colors.deepPurple,this.forTitleCol=Colors.grey}){
    switch(enCategory){
      case EnCategory.buying:
        name = "Buying";
        icon = Icons.shopping_cart_outlined;
      case EnCategory.selling:
        name = "Selling";
        icon = Icons.store_mall_directory_outlined;
      case EnCategory.trades:
        name = "Trades";
        icon = Icons.shop;
      case EnCategory.videos:
        name = "Videos";
        icon = Icons.slow_motion_video_outlined;
      case EnCategory.deals:
        name = "Deals";
        icon = Icons.local_offer;
      case EnCategory.caseStudy:
        name = "Case Study";
        icon = Icons.menu_book;

    }


  }
   void click(){
     backCol = Colors.deepPurple;
     forIconCol = Colors.white;
     forTitleCol=Colors.white;
   }
   void reSet(){
     backCol = Colors.white;
     forIconCol = Colors.deepPurple;
     forTitleCol=Colors.grey;
   }
}