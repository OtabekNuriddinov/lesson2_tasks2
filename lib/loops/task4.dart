// a soni berilgan. 0 dan a gacha
// bo'lgan 5 ga bo'linadigan sonlar yig'indisini toping va yig'indini konsolga chiqaring. a sonini ham inobatga oling.

void main(){
  int a = 35;
  divide5Sum(a);
}

void divide5Sum(int a){
  int i = 0;
  int sum = 0;
  while(i<=a){
    if(i%5==0){
      sum+=i;
    }
    i++;
  }
  print(sum);
}