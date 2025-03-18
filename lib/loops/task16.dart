// n soni berilgan (n  uch xonali son deb hisoblang).
// Shu son Armstrong raqami hisoblanadimi yoki yo'qmi ?
// Agar Armsrong raqami bo'lsa  konsolga  true bo'lmasa false chiqaring.
// Armstrong raqam.  n = 153  agar (1*1*1) + (5*5*5) + (3*3*3) = 153.

void main(){

  int num = 153;
  bool res = armstrong(num);
  print(res);

}

bool armstrong(int num){ // 153
  int r1 = num%10;
  int r10 = num~/10%10;
  int r100 = num~/100;

  int kubik = (r1*r1*r1)+ (r10*r10*r10) + (r100*r100*r100);

  if(kubik==num){
    return true;
  }
  return false;
}