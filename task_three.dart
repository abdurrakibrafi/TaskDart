Map<String, dynamic> listOperations(List<int> numbers) {
  int sumOfEven = 0;
  int largestOddNum = 0;
  List<int> reversedTheList = List.from(numbers
      .reversed); //using reversed reserved function totally reverse the list

  for (int number in numbers) {
    if (number % 2 == 0) {
      sumOfEven += number; // add even number
    } else {
      //if largest number empty or larger then other list number
      if (largestOddNum == null || number > largestOddNum) {
        largestOddNum = number; //here find the largest odd Number
      }
    }
  }

  return {
    'evenSum': sumOfEven,
    'largestOdd': largestOddNum,
    'reversedList': reversedTheList,
  };
}

void main() {
  List<int> numbers = [9, 5, 8, 11, 33, 6, 10, 4];

  Map<String, dynamic> results =
      listOperations(numbers); //assign number list in new Map result variable

  print("Sum of even numbers: ${results['evenSum']}");
  print("Largest odd number: ${results['largestOdd']}");
  print("Reversed list: ${results['reversedList']}");
}
