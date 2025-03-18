// a , n sonlari berilgan (a soni 1-9 o'rtasida ).
// Ketma ketlikni hisoblang. a + aa + aaa + ........  nta a bo'ladi.
// Yig'indini konsolga chiqarish kerak.

void main(){
  int a = 3;
  int n = 4;
  int res = summa(a, n);
  print(res);
}

int summa(int a, int n){

  int summa = 0;
  int kerak = 0;
  for(int i=0; i<n; i++){
    kerak = kerak * 10 +a;
    summa+=kerak;
  }
  return summa;
}

