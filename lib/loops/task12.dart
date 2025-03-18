// a sonini n chi darajasini hisoblaydigan dastur yozing
// va hosil bo'lgan sonni konsolga chiqaring.

void main(){
  int a = 2;
  int n = 6;
  int res = ndaraja(a, n);
  print(res);
}

int ndaraja(int a, int n){
  int i = 0;
  int daraja = 1;

  while(i<n){
    daraja = a * daraja;
    i++;
  }
  return daraja;
}