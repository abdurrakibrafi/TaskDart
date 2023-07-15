void main() {
  //here declare int type student achieve mark
  int achieveMark = 85;
  //in grade string datatype variable we store our grading system
  String? grade;

  if (achieveMark >= 90 && achieveMark <=100) {
    grade = 'A';
  } else if (achieveMark < 90 && achieveMark >= 80) {
    grade = 'B';
  } else if (achieveMark < 80 && achieveMark >= 70) {
    grade = 'C';
  } else if (achieveMark < 70 && achieveMark  >= 60) {
    grade = 'D';
  } else if (achieveMark < 60) {
    grade = 'F';
  }else{
    grade='Out of grading system';
  }
  
  print("Saiaf Anan's grade:${grade}");
}