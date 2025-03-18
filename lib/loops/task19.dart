// n  soni berilgan.
// Shu sonni raqamlarini yig'indisini toping.

void main(){
  int n = 35;
  int res = summa(n);
  print(res);
}

int summa(int n){

  int summa = 0;

  while(n>0){
    int son = n%10;
    summa+=son;
    n~/=10;
  }

  return summa;
}