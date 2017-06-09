function findOdd(A) {
  var obj = {};
  A.forEach(function(el){
    obj[el] ? obj[el]++ : obj[el] = 1;
  });

  for(prop in obj) {
    if(obj[prop] % 2 !== 0) return Number(prop);
  }
  return 'None';
}

console.log(findOdd([1, 2, 3, 4, 5, 4, 5, 3, 2]));
console.log(findOdd([]));
console.log(findOdd([1, 2, 3, 3, 2, 1]));
