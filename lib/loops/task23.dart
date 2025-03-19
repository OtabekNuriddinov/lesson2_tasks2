void main(){
  int n = 15;
  int res = fibonachi(n);
  print(res);
}

int fibonachi(int n){

  int f1 = 0;
  int f2 = 1;
  int summa = f1 + f2;

  for(int i=2; i<n; i++){
    int next = f1 + f2;
    f1 = f2;
    f2 = next;
    summa += next;
  }
  return summa - 1;
}
