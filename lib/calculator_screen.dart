import 'package:calculator_bloc/calculator_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalculatorScreen extends StatefulWidget{
const CalculatorScreen({super.key});

@override
State<CalculatorScreen> createState() => _CalculatorScreenState();


}

class _CalculatorScreenState extends State<CalculatorScreen>{

final _num1Controller = TextEditingController();
final _num2Controller = TextEditingController();
  @override
  Widget build(BuildContext context){
   return Scaffold(body: Column(
    children: [
      TextField(
        controller: _num1Controller,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(labelText: 'Please enter Num1'),
      ),
      SizedBox(height: 10),
       TextField(
        controller: _num2Controller,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(labelText: 'Please enter Num2'),
      ),
      SizedBox(height: 10),
      ElevatedButton(onPressed: (){

      final num1 = double.tryParse(_num1Controller.text)?? 0;
      final num2 = double.tryParse(_num2Controller.text)?? 0;
     
      context.read<CalculatorBloc>().add(AddNumber(num1, num2));
      }, child: Text('Add Numbers')),

      SizedBox(height: 10),
      BlocBuilder<CalculatorBloc, CalculatorState>(builder: (context, state){
        if(state is CalculatorResult){

          return Text('result : ${state.result}', style: TextStyle(fontSize: 24));
        }
        return Text('result :',  style: TextStyle(fontSize: 24));
        })
    ],
   ));

  }
}