void main() {
  List<int> studentsGrade = [85, 92, 78, 65, 88, 72];

  double sum = 0.0; 
  //for-in loop apply for iterate the grade of students and addition the total grade.
  for (var grade in studentsGrade) {
     sum = sum + grade;
  }

  double average = sum / studentsGrade.length; //apply the formula(sum Of Grade/the List of length).
  int averageResult=average.toInt(); //convert double to int using toInt().
  int roundedAverage = average.round(); //here round the grade.

  print("Student's average grade: $averageResult");
  print("Rounded average: $roundedAverage");

  if (roundedAverage >= 70) {
    print("Passed");
  } else {
    print("Failed");
  }
}


