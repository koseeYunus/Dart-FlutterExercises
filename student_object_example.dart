main(List<String> args) {
  Student ogr1=new Student();
  Student ogr2=new Student();

  ogr1.no=161602006;
  ogr1.isim="Yunus Köse";
  ogr1.cinsiyet="Erkek";

  ogr2.no=259864587;
  ogr2.isim="Ayşe Nur";
  ogr2.cinsiyet="Kadın";

  ogr1.bilgiYaz();
  ogr2.bilgiYaz();
}

class Student {
  int no;
  String isim;
  String cinsiyet;

  void bilgiYaz(){
    print("${this.no} numaralı ${this.isim} isimli öğrencinin cinsiyeti ${this.cinsiyet} dir.");
  }
}