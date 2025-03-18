// a soni berilgan.  0 dan a gacha bo'lgan sonlaryig'indisini toping  va yig'indini
// konsolga chiqaring. a sonini ham hisobga oling.

void main(){
  int a = 10;
  yigindi(a);
}

void yigindi(int a){
  int sum = 0;
  for(int i=0; i<=a; i++){
    sum+=i;
  }
  print(sum);
}