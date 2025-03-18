// n soni berilgan. Berilgan son palindrome  ekanligini aniqlang. Agar bo'lsa true '
// bo'lmasa false chiqaring.
// Masalan: n = 12321  bunda chap tomondan va o'ng  tomondan
// o'qisa ham bir hil bo'lishi kerak.

void main(){
  int n = 12321;
  bool res = reverseTrue(n);
  print(res);
}

bool reverseTrue(int n){

  int original = n;

  int reversed = 0;
  while(n>0){
    int last = n%10;
    reversed = reversed *10 + last;
    n~/=10;
  }
  if(original==reversed){
    return true;
  }
  else{
    return false;
  }

}