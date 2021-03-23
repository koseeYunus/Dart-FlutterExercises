main(List<String> args) {
  //Soru 1
  double a=52.5,b=62.9,c=78.2;
  double ortalama=(a+b+c)/3;
  print("3 sayının ortalaması $ortalama");

  //Soru 2
  int k1=5,k2=10,k3=10;
  if(k1==k2 && k2==k3){
    print("Eşkenar Üçgen.");
  }
  else if(k1==k2 || k1==k3 || k2==k3){
    print("İkizkenar Üçgen.");
  }
  else{
    print("çokgen Üçgen.");
  }

  //Soru 5
  for(int i=0;i<100;i++){
    if(i%15==0){
      print("$i sayısı 15 tam bölünüyor.");
    }
  }

  print("Girilen değerlere göre Didörtgen prizmanın hacimi : "+hacimHesapla(5.89 , 6.12 , 10.85).toString());

  print("Karenin alanı : "+alanHesapla(12,6).toString());

  print("Girilen sayılardan küçük olan : " + kucukOlan(25, 3).toString());

  ulkeYazdir("Türkiye",il: "Samsun",ilce: "Çarşamba");
  ulkeYazdir("Azerbeycan");
}


double hacimHesapla(double en, boy, yukeseklik){

  return en*boy*yukeseklik;
}


int alanHesapla(int x,y) => x*y;

int kucukOlan(int k1,k2) => k1<k2 ? k1:k2; 

void ulkeYazdir(String ad,{String il,String ilce}){
  if (ad !=null) print("$ad isimli ülkenin");
  if (il !=null) print("$il ili ve");
  if (ilce !=null) print("$ilce ilçesi vardır.");
}