// a soni berilgan.
// a sonini 5 chi darajasini hisoblab konsolga chiqaring

void main(){
  int a = 4;
  int res = daraja5(a);
  print(res);
}

int daraja5(int a){

  int i = 0;
  int daraja = 1;
  while(i<5){
    daraja = a * daraja;
    i++;
  }
  return daraja;
}