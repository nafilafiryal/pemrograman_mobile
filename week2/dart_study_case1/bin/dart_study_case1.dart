import 'package:dart_study_case1/dart_study_case1.dart' as dart_study_case1;

void main() {
  double celsius = 30.0;
  double fahrenheit, kelvin;

  // Rumus konversi suhu
  fahrenheit = (celsius * 9 / 5) + 32;
  kelvin = celsius + 273.15;

  print('$celsius C = $fahrenheit F');
  print('$celsius C = $kelvin K');
}
