// a soni berilgan. 0 dan a gacha bo'lgan juft  sonlar
// yig'indisini toping  va yig'indini konsolga chiqaring

void main(){
  int a = 10;
  int res = evenSum(a);
  print(res);
}

int evenSum(int a){
  int i = 0;
  int sum = 0;
  while(i<=a){
    if(i%2==0){
      sum+=i;
    }
    i++;
  }
  return sum;
}