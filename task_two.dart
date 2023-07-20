void main() {
  List<int> OwnNumberList = [9, 78, 97, 8, 42, 76, 91, 2];
  //declare int type variable and assign my OwnNumberList in the function to find out largest number
  int _largestNumber = findLargestNumber(OwnNumberList);
  print('The largest Number in the list is = ${_largestNumber}');
}

//declare int type findLargestNumber function
int findLargestNumber(List<int> numbers) {
  //here declare new int type variable for assign th
  int largestNumber = numbers[0];
  //apply for each loop to iterate each number and compare using logic
  for (int largeNum in numbers) {
    if (largeNum > largestNumber) {
      largestNumber = largeNum;
    }
  }
  return largestNumber;
}
