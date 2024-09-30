import 'dart:io';
import 'dart:math';

class MinMax {
  late int min, max;
  late int random;

  MinMax() {
    min = int.parse(Platform.environment['MIN'] ?? '200');
    max = int.parse(Platform.environment['MAX'] ?? '300');

    random = Random().nextInt(max - min + 1) + min;
  }
}

void main(List<String> arguments) {
  MinMax m = MinMax();

  for (var argument in arguments) {
    int randomNum = m.random;
    var newArgument =
        argument[0].toUpperCase() + argument.substring(1).toLowerCase();
    print('Hey $newArgument, your lucky number is $randomNum');
  }
}
