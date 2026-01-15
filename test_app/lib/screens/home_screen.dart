
import 'package:flutter/material.dart';
import 'package:test_app/business_layer/category_class.dart';
import 'package:test_app/global/en_category.dart';
import 'package:test_app/widgets/button_NavBar.dart';
import 'package:test_app/widgets/category_container.dart';
import 'package:test_app/widgets/custom_AppBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 Color backCol = Colors.white;
 Color forCol = Colors.deepPurple;
 Color titCol = Colors.grey;
 int currentKey = 0;

 final List<ClsCategory> _list =[ ClsCategory(enCategory: EnCategory.buying),
   ClsCategory(enCategory: EnCategory.selling),ClsCategory(enCategory: EnCategory.trades),
   ClsCategory(enCategory: EnCategory.videos),ClsCategory(enCategory: EnCategory.deals),
   ClsCategory(enCategory: EnCategory.caseStudy)];


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
                           children:[
                             for(int i = 0 ; i<_list.length;i++)
                               CategoryContainer(Tapped: (){onTapped(i);},category:  _list[i],)

                           ] ),
                     ),
                   ),
                 ),

               ],
             )
         ,bottomNavigationBar:ButtonNavbar()
     );


   }
void onTapped(int index)
{
setState(() {
  for(int i = 0 ;i < _list.length ; i++){
    i!=index?_list[i].reSet():_list[i].click();
  }

});
}
}
