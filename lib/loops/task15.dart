//  n  soni berilgan.
// Ketma ketlikni  berilgan   1 + 4 + 9 + 16 +  ... + n*n . Shu ketma ketlikning yig'indisini  hisoblang  va  natijani konsolga chiqaring.
// Masalan n = 6
// Bunda  1 dan 6 gacha bo'lgan sonlarning kvadrati yig'indisini xisoblash kerak.

void main(){
  int n = 6;
  int res = summa(n);
  print(res);
}

int summa(int n){

  int summa = 0;
  for(int i=1; i<=n; i++){
    summa += i*i;
  }
  return summa;

}