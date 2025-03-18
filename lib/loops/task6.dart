// a va b sonlar orasidagi (butun) sonlar   yig'indisini toping
// (a sonini inobatga oling) va yig'indini konsolga chiqaring.

void main(){
  int a = 2;
  int b = 8;

  int res = sum(a, b);
  print(res);
}

int sum(int a, int b){
  int summa = 0;
  for(int i=a; i<b; i++){
    summa+=i;
  }
  return summa;
}