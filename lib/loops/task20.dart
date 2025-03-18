// n soni berilgan. Shu sonni teskarisini toping va konsolga chiqaring.
// Masalan: n = 12345
// uning teskarisi 54321;

void main(){
  int n = 12345;
  int res = reversed(n);
  print(res);
}

int reversed(int n){
  /// 1 2 3 4 5

  int reverse = 0;
  while(n>0){
    int last = n%10;
    reverse = reverse*10 + last;
    n~/=10;
  }

  return reverse;

}