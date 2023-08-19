import 'package:college_calculator/college_calculator.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calculate(), 42);
  });

  test('roundNote', () {
    expect(roundNote(84), 85);
    expect(roundNote(29), 29);
    expect(roundNote(57), 57);
  });

  test('roundNoteTeacher', () {
    expect(roundNoteTeacher(84, 5), 85);
    expect(roundNoteTeacher(29, 5), 29);
    expect(roundNoteTeacher(57, 5), 57);
  });

  test('checkApprove', () {
    expect(checkApproval(85), true);
    expect(checkApproval(29), false);
    expect(checkApproval(57), true);
  });

  test('calculateAverage', () {
    expect(calculateAverage([1, 1, 1, 1]), 1);
    expect(calculateAverage([2, 2, 2]), 2);
    expect(calculateAverage([]), 0);
  });
}
