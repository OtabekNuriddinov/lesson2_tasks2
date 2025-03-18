//  a soni berilgan.
//  Shu son mukammal raqam yoki yo'qmi shuni aniqlang.
//  Agar mukammal raqam bo'lsa true bo'lmasa false konsolga chiqaring.
// Mukammal raqam deb bo'linuvchilar  yig'indisiga teng bo'ladigan songa (o'zidan tashqari) aytiladi.

void main(){

  int a = 6;
  bool res = mukammal(a);
  print(res);

}

bool mukammal(int a){

  int summa = 0;
  for(int i=1; i<a; i++){
    if(a%i==0){
      summa+=i;
    }
  }

  if(summa==a){
    return true;
  }
  else{
    return false;
  }
}