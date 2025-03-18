// a soni berilgan. 0 dan  a gacha bo'lgan toq sonlar yig'indisini toping  va yig'indini
// konsolga chiqaring. a sonini ham inobatga oling.

void main(){
  int a = 10;
  oddSum(a);
}

void oddSum(int a){
  int i = 0;
  int sum = 0;
  while(i<=a){
    if(i%2!=0){
      sum+=i;
    }
    i++;
  }
  print(sum);
}