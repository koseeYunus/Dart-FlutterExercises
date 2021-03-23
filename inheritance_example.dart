main(List<String> args) {
  Mudur m1=new Mudur();
  m1.gorev="Yardımcı";
  m1.maas=4800;
  print("Müdür İsmi : ${m1.isim} , Mudur No : ${m1.no} , Müdür Görev : ${m1.gorev} , Mudur Maaş : ${m1.maas}");
  m1.isim="Mahmut Tuncer";
  m1.no=25635;
  print("Müdür İsmi : ${m1.isim} , Mudur No : ${m1.no} , Müdür Görev : ${m1.gorev} , Mudur Maaş : ${m1.maas}");
  m1.isYap();

  Ogretmen o1=new Ogretmen();
  o1.isim="Figen Dikmen";
  o1.verDers=["Matematik","Fizik"];
  o1.oda="12";
  print("Öğretmen İsmi : ${o1.isim} , Öretmen No : ${o1.no} , Verilen Dersler : ${o1.verDers} , Öğretmen Oda : ${o1.oda} ");
  o1.isYap();


}

class Personel{
  String isim="Belirlenmedi.";
  int no=0;

  void isYap(){
    print("İş Yapıldı.");
  }

}

class Mudur extends Personel{
  String gorev;
  int maas;



}

class Ogretmen extends Personel{
  List<String> verDers;
  String oda;

  @override
  void isYap() {
    print("Derse Verildi");
  }

}