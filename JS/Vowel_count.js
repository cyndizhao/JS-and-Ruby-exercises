function getCount(str) {
  let vowelsCount = 0;
  for (let i = 0; i < str.length; i++){
    if (['a', 'e', 'i', 'o', 'u'].includes(str[i])) vowelsCount += 1;
  }

  return vowelsCount;
}

console.log(getCount('abshde'));


// // better solution
// function getCount(str) {
//   return (str.match(/[aeiou]/ig)||[]).length;
// }
// function getCount(str) {
//   return str.replace(/[^aeiou]/gi, '').length;
// }
