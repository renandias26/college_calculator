int calculate() {
  return 6 * 7;
}

bool checkApproval(int note){
  return note > 40;
}

void calculateStudentAverage(Map<String, Map<String, List<int>>> students){
  students.forEach((name, subject) {
    if (subject.isNotEmpty){
      print('\n');
      print('Student Name: $name');
      subject.forEach((nameSubject, grades) {
        print('\t Subject: $nameSubject');
        int average = calculateAverage(grades);
        print('\t\t Average: $average');
      });
    }
  });
}

int calculateAverage(List<int> grades){
  if (grades.isEmpty){
    return 0;
  }
  
  double average = ((grades.reduce((value, element) => value + element))/grades.length);

  return average.toInt();
}

int roundNote(int note){
  if(note < 38){
    return note;
  }

  var finalNote = note;
  while(finalNote % 5 != 0){
    finalNote++;
  }
  if ((finalNote - note) < 3){
    return finalNote;
  }
  return note;
}

int roundNoteTeacher(int note, int multiple){
  if(note < 38){
    return note;
  }

  var restMultiple = note % multiple;
  if((multiple - restMultiple)< 3){
    return note - restMultiple + multiple;
  }
  return note;
}