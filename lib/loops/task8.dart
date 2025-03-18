// a va b sonlar orasidagi 3 ga bo'linadigan sonlarni
// yig'indisi va sonini konsolga chiqaring.

void main(){
  int a = 4;
  int b = 15;
  divide3(a, b);
}

void divide3(int a, int b){
  int count = 0;
  int sum = 0;
  for(int i=a; i<b; i++){
    if(i%3==0){
      sum+=i;
      count++;
    }
  }
  print("yig'indi: $sum\nsoni: $count");
}