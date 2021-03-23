import 'ogrenci.dart';

main(List<String> args) {
  ogrenci ogr1=new ogrenci.basariBelirsiz("161602006", "Yunus Köse", "Matematik");

  ogr1.bilgileriYaz();

  ogr1.numaraAta="12345";

  ogr1.basariAta=true;

  ogr1.bilgileriYaz();
}
