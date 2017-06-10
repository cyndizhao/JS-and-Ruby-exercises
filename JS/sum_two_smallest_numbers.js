function sumTwoSmallestNumbers(numbers){
  numbers = numbers.sort(function(a, b){return a - b; });
  return numbers[0] + numbers[1];
}

console.log(sumTwoSmallestNumbers([1,5,32,636,845,3,25]));
