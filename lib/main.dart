import 'package:flutter/material.dart';
import 'package:xo_game/login.dart';
import 'package:xo_game/xo_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home:  Scaffold(
        appBar: AppBar(
          backgroundColor:Colors.deepPurple ,
          title: const Text("XO Game"),
        ),
        body: Login(),
      ),
     //   initialRoute:Login.routeName ,
      routes: {
        XoScreen.routeName:(_)=>XoScreen(),
      },
    );
  }
}


