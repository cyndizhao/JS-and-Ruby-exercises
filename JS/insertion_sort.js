function insertionSort(arr){
  for(let i=0;i<arr.length;i++){
    for(let j=0; j<i;j++){
      if (arr[j] > arr[i]){
        let temp = arr[j];
        arr[j] = arr[i];
        arr[i] = temp;
      }
    }
  }
  return arr;
}

console.log(insertionSort([3,5,1,66,33,7,35,88,56,43]));
