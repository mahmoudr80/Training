

import 'package:flutter/material.dart';
import 'package:test_app/screens/home_screen.dart';

class RootApp extends StatelessWidget {
  const RootApp({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    MaterialApp(
      home: HomeScreen(),
      theme: ThemeData(appBarTheme:AppBarTheme(color: Colors.white,),
      scaffoldBackgroundColor: Color(0xffe5e5e5) ,
      navigationBarTheme: NavigationBarThemeData(backgroundColor: Colors.white),

      )
    );
  }
}
