// n soni berilgan. Berilgan sonning factarialini hisoblang.
// Masalan: 5 ning factoriali   1*2*3*4*5 = 120;

void main(){
  int n = 5;
  int res = faktorial(n);
  print(res);
}

int faktorial(int n){

  int kopaytma = 1;
  for(int i=1; i<=n; i++){
    kopaytma *=i;
  }
  return kopaytma;
}