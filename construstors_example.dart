main(List<String> args) {
  
  Ogrenci ogr1=new Ogrenci(161602006, "Yunus Köse", "Erkek");

  Ogrenci ogr2=new Ogrenci(null, null, "Belirsiz");

  ogr1.bilgiYaz();
  ogr2.bilgiYaz();

  ogr2.no=785412365;
  ogr2.isim="Yusuf Köse";
  ogr2.cinsiyet="Erkek";

  print("*********************************************************************************");
  ogr2.bilgiYaz();

  print("*********************************************************************************");
  Ogrenci ogr3=new Ogrenci.numarasiOlmayanOgrenci("Ayşe Nur", "Kadın");
  ogr3.bilgiYaz();

}

class Ogrenci {
  int no;
  String isim;
  String cinsiyet;

  Ogrenci(int no,String isim,String cinsiyet){
    print("öğrenci sınıfından bir nesne oluşturuldu.");
    this.no=no;
    this.isim=isim;
    this.cinsiyet=cinsiyet;
  }

  Ogrenci.numarasiOlmayanOgrenci(this.isim,this.cinsiyet) {
    print("numarası olmayan ogrenci oluşturuldu.");
  }

  void bilgiYaz(){
    print("${this.no} numaralı ${this.isim} isimli öğrencinin cinsiyeti ${this.cinsiyet} dir.");
  }
}