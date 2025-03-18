// a va b sonlar orasidagi 2 va 3 ga
// bo'linadigan sonlarning sonini  konsolga chiqaring.

void main(){
  int a = 4;
  int b = 15;
  divide32(a, b);
}

void divide32(int a, int b){
  int count = 0;
  for(int i=a; i<b; i++){
    if(i%3==0 && i%2==0){
      count++;
    }
  }
  print(count);
}