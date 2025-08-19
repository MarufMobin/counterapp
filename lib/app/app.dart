import 'package:counterapp/presentation/ui/screens/home_screen.dart';
import 'package:flutter/material.dart';

class CounterApp extends StatelessWidget{
  const CounterApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}