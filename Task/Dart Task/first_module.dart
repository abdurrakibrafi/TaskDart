void main() {
  //here declare int type student achieve mark
  int achieveMark = 85;
  //in grade string datatype variable we store our grading system
  String? grade;

  if (achieveMark >= 90) {
    grade = 'A';
  } else if (achieveMark < 90 && achieveMark >= 80) {
    grade = 'B';
  } else if (achieveMark >= 70 && achieveMark < 80) {
    grade = 'D';
  } else if (achieveMark >= 60 && achieveMark < 70) {
    grade = 'E';
  } else if (achieveMark < 60) {
    grade = 'F';
  }
  
  print("Saiaf Anan's grade:${grade}");
}