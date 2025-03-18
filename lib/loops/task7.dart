// a va b sonlar orasidagi juft sonlarni
// sonini toping   (a sonini inobatga oling) va natijani konsolga chiqaring.

void main(){
  int a = 4;
  int b = 15;
  int res = countEven(a, b);
  print(res);
}

int countEven(int a, int b){
  int count = 0;
  for(int i=a; i<b; i++){
    if(i%2==0){
      count++;
    }
  }
  return count;
}