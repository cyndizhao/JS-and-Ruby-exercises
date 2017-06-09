function uniqueInOrder(it) {
  let result = [], previousElement;

  for (let i = 0; i < it.length; i++) {
    if (it[i] != previousElement) {
      result.push(it[i]);
      previousElement = it[i];
    }
  }

  return result;
}

console.log(uniqueInOrder([1,1,3,3,1,1,"you", "you"]));
