function selectionSort(arr){
  for(let i=0;i<arr.length;i++){
    let minIndex = i;
    for(let j=i+1; j<arr.length;j++){
      if(arr[j] < arr[i]){
        minIndex = j;
        let temp = arr[minIndex];
        arr[minIndex] = arr[i];
        arr[i] = temp;
      }
    }

  }
  return arr;
}

console.log(selectionSort([42, 3, 1, 8, 15, 7, 30]));
