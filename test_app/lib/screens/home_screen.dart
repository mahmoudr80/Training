

import 'package:flutter/material.dart';
import 'package:test_app/widgets/button_NavBar.dart';
import 'package:test_app/widgets/category_container.dart';
import 'package:test_app/widgets/custom_AppBar.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 Color backCol = Colors.white;
 Color forCol = Colors.deepPurple;
 Color titCol = Colors.grey;
 int currentKey = 0;

   @override
   Widget build(BuildContext context) {
     return  Scaffold(
         appBar:CustomAppbar(),

         body:
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text("Choose your area",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,
                 fontSize: 30),),
                 Expanded(
                   child: SizedBox(
                     child: Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 15),
                       child: GridView.count(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 15,controller: ScrollController(),
                           scrollDirection: Axis.vertical,padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),shrinkWrap:true ,
                           children: [
                             currentKey==1?
                             CategoryContainer(cusIcon: Icons.shopping_cart_outlined,cusTitle: "Buying",Tapped:
                                 (){}
                               ,backColor: Colors.deepPurple,forColor: Colors.white,titleColor: Colors.white,)
                                 :
                             CategoryContainer(cusIcon: Icons.shopping_cart_outlined,cusTitle: "Buying",Tapped:
                                 (){setState(() {currentKey = 1;
                             });}),
                             currentKey==2?
                             CategoryContainer(cusIcon: Icons.store_mall_directory_outlined,cusTitle: "Selling",Tapped:
                                 (){},backColor: Colors.deepPurple,forColor: Colors.white,titleColor: Colors.white,)
                             :
                             CategoryContainer(cusIcon: Icons.store_mall_directory_outlined,cusTitle: "Selling",Tapped:
                                 (){setState(() {
                                   currentKey=2;
                                 });})
                             ,
                             currentKey==3?
                             CategoryContainer(cusIcon: Icons.shop,cusTitle: "Trades",Tapped:
                                 (){},backColor: Colors.deepPurple,forColor: Colors.white,titleColor: Colors.white,)
                             :
                             CategoryContainer(cusIcon: Icons.shop,cusTitle: "Trades",Tapped:
                                 (){setState(() {currentKey = 3;});})
                             ,
                             currentKey==4?
                             CategoryContainer(cusIcon: Icons.slow_motion_video_outlined,cusTitle: "Videos",Tapped:
                                 (){setState(() {});},backColor: backCol,forColor: forCol,titleColor: titCol)
                             :
                             CategoryContainer(cusIcon: Icons.slow_motion_video_outlined,cusTitle: "Videos",Tapped:
                                 (){setState(() {currentKey = 4;
                             });})

                             ,
                             currentKey==5?
                             CategoryContainer(cusIcon: Icons.local_offer,cusTitle: "Deals" ,Tapped:
                                 (){setState(){}},backColor: backCol,forColor: forCol,titleColor: titCol)
                             :
                             CategoryContainer(cusIcon: Icons.local_offer,cusTitle: "Deals" ,Tapped:
                                 (){setState(() {currentKey = 5;
                             });})
                             ,
                             currentKey==6?
                             CategoryContainer(cusIcon: Icons.menu_book,cusTitle: "Case Study",Tapped:
                                 (){},backColor: backCol,forColor: forCol,titleColor: titCol)
                             :
                             CategoryContainer(cusIcon: Icons.menu_book,cusTitle: "Case Study",Tapped:
                                 (){setState(() {currentKey = 6;
                             });})
                             ,
                             currentKey==7?
                             CategoryContainer(cusIcon: Icons.shopping_cart_outlined,cusTitle: "Buying",Tapped:
                                 (){}
                               ,backColor: Colors.deepPurple,forColor: Colors.white,titleColor: Colors.white,)
                                 :
                             CategoryContainer(cusIcon: Icons.shopping_cart_outlined,cusTitle: "Buying",Tapped:
                                 (){setState(() {currentKey = 7;
                             });}),
                             currentKey==8?
                             CategoryContainer(cusIcon: Icons.store_mall_directory_outlined,cusTitle: "Selling",Tapped:
                                 (){},backColor: Colors.deepPurple,forColor: Colors.white,titleColor: Colors.white,)
                                 :
                             CategoryContainer(cusIcon: Icons.store_mall_directory_outlined,cusTitle: "Selling",Tapped:
                                 (){setState(() {
                               currentKey=8;
                             });})
                             ,
                             currentKey==9?
                             CategoryContainer(cusIcon: Icons.shop,cusTitle: "Trades",Tapped:
                                 (){},backColor: Colors.deepPurple,forColor: Colors.white,titleColor: Colors.white,)
                                 :
                             CategoryContainer(cusIcon: Icons.shop,cusTitle: "Trades",Tapped:
                                 (){setState(() {currentKey = 9;});})
                             ,
                             currentKey==10?
                             CategoryContainer(cusIcon: Icons.slow_motion_video_outlined,cusTitle: "Videos",Tapped:
                                 (){setState(() {});},backColor: backCol,forColor: forCol,titleColor: titCol)
                                 :
                             CategoryContainer(cusIcon: Icons.slow_motion_video_outlined,cusTitle: "Videos",Tapped:
                                 (){setState(() {currentKey = 10;
                             });})

                             ,
                             currentKey==11?
                             CategoryContainer(cusIcon: Icons.local_offer,cusTitle: "Deals" ,Tapped:
                                 (){setState(){}},backColor: backCol,forColor: forCol,titleColor: titCol)
                                 :
                             CategoryContainer(cusIcon: Icons.local_offer,cusTitle: "Deals" ,Tapped:
                                 (){setState(() {currentKey = 11;
                             });})
                             ,
                             currentKey==12?
                             CategoryContainer(cusIcon: Icons.menu_book,cusTitle: "Case Study",Tapped:
                                 (){},backColor: backCol,forColor: forCol,titleColor: titCol)
                                 :
                             CategoryContainer(cusIcon: Icons.menu_book,cusTitle: "Case Study",Tapped:
                                 (){setState(() {currentKey = 12;
                             });})
                             ,

                           ]),
                     ),
                   ),
                 ),

            //     CategoryContainer(cusIcon: Icons.shopping_cart_outlined,cusTitle: "Buying",Tapped: (){},)

               ],
             )
         ,bottomNavigationBar:ButtonNavbar()
     );


   }

   void onTapp(int val)
   {
     setState(() {
       forCol = Colors.white;
       backCol = Colors.deepPurple;
       titCol = Colors.white;
       currentKey=val;
     });
   }
}

