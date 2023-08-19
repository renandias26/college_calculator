import 'package:college_calculator/college_calculator.dart' as college_calculator;
import 'package:college_calculator/domain/people.dart';

void main(List<String> arguments) {
  // print('Hello world: ${calculator.calculate()}!');
  exercise();

  People people = People('Renan', 19);
}

void exercise(){
  Map<String, Map<String, List<int>>> students = <String, Map<String, List<int>>>{
    'Joao': <String, List<int>>{
      'Math': <int>[30, 45, 67, 42], 
      'History': <int>[35, 37, 30, 46], 
      'Science': <int>[73, 65, 79, 83]
    },
    'Manuel': <String, List<int>>{
      'Math': <int>[61, 60, 85, 62], 
      'History': <int>[77, 80, 75, 78], 
      'Science': <int>[89, 92, 75, 80]
    },
    'Joaquim': <String, List<int>>{
      'Math': <int>[87, 92, 89, 72], 
      'History': <int>[92, 96, 85, 91], 
      'Science': <int>[39, 36, 38, 35]
    },
  };

  college_calculator.calculateStudentAverage(students);
}
