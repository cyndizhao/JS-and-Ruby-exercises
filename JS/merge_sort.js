function combineArrays(arr1, arr2){
  let result = [];
  while(arr1.length > 0 && arr2.length > 0){
    if (arr1[0] <= arr2[0]){
      result.push(arr1.shift());
    }else{
      result.push(arr2.shift());
    }
  }
  return result.concat(arr1, arr2);
}

console.log(combineArrays([1,4,7,11], [3,6,12]));

function splitArray(arr){
  if (arr.length <= 1){
    return arr;
  }else{
    let mid = arr.length/2;
    let arr1 = arr.slice(0, mid);
    let arr2 = arr.slice(mid, arr.length);
    let resultArr1 = splitArray(arr1);
    let resultArr2 = splitArray(arr2);
    return combineArrays(resultArr1, resultArr2);
  }
}

console.log(splitArray([3,6,11,44,62,74,5,2,53,7,13]));
