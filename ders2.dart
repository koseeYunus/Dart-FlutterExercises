main(List<String> args) {
  double not=82;
  int sayi1=55;
  int sayi2=75;
  int kucukSayi;

  if(not >= 90 && not<=100){
    print("Dersi AA ile geçtiniz.");
  }
  else if(not>=80 && not<90){
    print("Dersi BB ile geçtiniz.");
  }
  else if(not>=70 && not<80){
    print("Dersi CC ile geçtiniz.");
  }
  else if(not>=60 && not<70){
    print("Dersi DD ile geçtiniz.");
  }
  else if(not>=0 && not<60){
    print("Dersten Kaldınız.");
  }
  else{
    print("Yanlış değer girdiniz.");
  }

  sayi1>sayi2 ? print("$sayi1 sayısı büyüktür.") : print("$sayi2 sayısı büyüktür.");

  kucukSayi=sayi1<sayi2 ? sayi1 : sayi2;
  print("Küçük olan sayı : $kucukSayi");

  String isim="Yunus";
  String soyIsim="Köse";
  String mesaj=isim ?? soyIsim;
  print("Hoşgeldin $mesaj");

  List kullanicilar=["Yunus","İbrahim","Yusuf","Tunahan"];
  for(String yaz in kullanicilar){
    print(yaz);
  }

  for(int i=0;i<5;i++){
    if(i==2){
      continue;
    }
    print(i);
  }
}