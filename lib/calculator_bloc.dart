import 'package:flutter_bloc/flutter_bloc.dart';

abstract class CalculatorState{}

class CalculatorInitial extends CalculatorState{}

class CalculatorResult extends CalculatorState{
  final double result;
  CalculatorResult(this.result);
}

abstract class CalculatorEvent{}

class AddNumber extends CalculatorEvent{
  final double num1;
  final double num2;

  AddNumber(this.num1, this.num2);
}

class CalculatorBloc  extends Bloc<CalculatorEvent, CalculatorState>{

CalculatorBloc() : super(CalculatorInitial()){
  on<AddNumber>((event, emit){
    final result = event.num1 + event.num2;
    emit(CalculatorResult(result));
  });
}


}