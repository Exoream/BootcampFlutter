List<int> range(startNum, finishNum) {
  List<int> result = [];

  // Range ascendingnya
  if (startNum <= finishNum) {
    for (int i = startNum; i <= finishNum; i++) {
      result.add(i);
    }
  } else {
    // Range descendingnya
    for (int i = startNum; i >= finishNum; i--) {
      result.add(i);
    }
  }

  return result;
}


void main() {
  // Ascending
  print(range(1, 10));
  print(range(11, 18));

  // Descending
  print(range(18, 11));
}
