function sortArray(array) {
  oddArray = array.filter(function(number){
    return number % 2 != 0;
  })
  sortedOddArray = oddArray.sort(function(a, b){
    return a-b;
  })
  result = array;
  array.forEach(function(element, index){
    if (element % 2 != 0){
      array[index] = sortedOddArray.shift();
    }
  })
  return result;
  // Return a sorted array.
}
