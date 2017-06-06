//Find the most recurring letter in a string. Estimate the Big O of your algorithm
function mostRecurringLetter(str){
  let hash = {}, mostRecurringList = [], max = 0;

  str.replace(/\s+/g, '').split('').forEach(function(letter){
    if (hash[letter] == undefined){
      hash[letter] = 1;
    }else{
      hash[letter] += 1;
      if (hash[letter] > max){
        max = hash[letter];
        mostRecurringList = [letter];
      }else if (hash[letter] === max){
        mostRecurringList.push(letter);
      }
    }
  });

  return mostRecurringList;
}


console.log(mostRecurringLetter("Your name is John Lenno hhhhhhh n                 xxxxxxxx"))
