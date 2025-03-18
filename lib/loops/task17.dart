// n soni berilgan.
// Shu son tub (prime) ekanligini aniqlang. Agar tub bo'lsa
// true  bo'lmasa false konsolga chiqaring.

void main(){
  int a = 7;
  bool res = isPrime(a);
  print(res);
}

bool isPrime(int n){

  for(int i=2; i<n; i++){
    if(n%i==0){
      return false;
    }
  }
  return true;
}