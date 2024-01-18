List<int> rangeWithStep(int startNum, int finishNum, int step) {
  List<int> result = [];

  // Range ascendingnya
  if (startNum <= finishNum) {
    for (int i = startNum; i <= finishNum; i += step) {
      result.add(i);
    }
  } else {
    // Range descendingnya
    for (int i = startNum; i >= finishNum; i -= step) {
      result.add(i);
    }
  }

  return result;
}

void main() {
  print(rangeWithStep(1, 10, 2));
  print(rangeWithStep(11, 23, 3));
  print(rangeWithStep(5, 2, 1));
}
