// n soni berilgan.
// Shu sonni raqamlarini sonini  konsolga chiqaring.

void main(){
  int n = 123;
  int res = nums(n);
  print(res);
}

int nums(int n){

  int count = 0;
  while(n>0){
    n~/=10;
    count++;
  }
  return count;
}