import 'dart:io';

void main() {
  String? name;
  do {
    print('Enter your name');
    name = stdin.readLineSync();
  } while (name!.isEmpty);
  print('You type your name, right? = $name');
  print('===============');
  String? digitado;
  int weight = 0;
  bool back = true;
  do {
    print('Enter your weight');
    digitado = stdin.readLineSync();

    int? weigthTransformado = int.tryParse(digitado!);
    if (weigthTransformado == null) {
      print('Digite um numero por favor.');
    } else {
      back = false;
      weight = weigthTransformado;
    }
  } while (back);
  print('You type your weight, right? = $weight Kg');
  print('===============');

  double height = 0;
  back = true;
  do {
    print('Enter your height');
    digitado = stdin.readLineSync();

    double? heightTransformado = double.tryParse(digitado!);
    if (heightTransformado == null) {
      print('Please type your height.');
    } else {
      back = false;
      height = heightTransformado;
    }
  } while (back);
  print('You type your height, right? = $height m');
}
