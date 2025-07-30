import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget{
const CalculatorScreen({super.key});

@override
State<CalculatorScreen> createState() => _CalculatorScreenState();


}

class _CalculatorScreenState extends State<CalculatorScreen>{

final _num1Controller = TextEditingController();
final _num2Contoller = TextEditingController();
  @override
  Widget build(BuildContext context){
   return Scaffold(body: Column());

  }
}