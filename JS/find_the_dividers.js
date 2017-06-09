function divisors(integer) {
  let result = [];
  for (let i = 2; i <= Math.floor(integer / 2); i++ ){
    if (integer % i === 0) result.push(i);
  }
  return result.length === 0 ? `${integer} is prime`: result;
};

console.log(divisors(13));
console.log(divisors(88));
