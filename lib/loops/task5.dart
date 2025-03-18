 // a soni berilgan. 0 dan a gacha bo'lgan juft sonlar soni toping va konsolga
 // chiqaring. a sonini inobatga olmaymiz.

 void main(){
  int a = 10;
  countEvens(a);
 }

 void countEvens(int a){
   int i = 0;
   int count = 0;
   while(i<a){
     if(i%2==0){
       count++;
     }
     i++;
   }
   print(count);
 }