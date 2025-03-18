//  a va b sonlari orasidagi musbat sonlar sonini toping  va shuni konsolga
// chiqaring.  b sonini ham inobatga oling.

void main(){
  int a = -1;
  int b = 10;
  musbat(a, b);
}

void musbat(int a, int b){
  int count = 0;
  for(int i=a; i<=b; i++){
    if(i>0){
      count++;
    }
  }
  print(count);
}