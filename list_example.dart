main(List<String> args) {

  List<String> kullanicilar=List.filled(20, "Belirlenmedi.");

  kullanicilar[0]="koseeYunus";
  kullanicilar[5]="akdagOsman";
  kullanicilar[12]="comertOnur";

  for(String kullanici in kullanicilar) print(kullanici);


  List<int> deger=List();

  deger.add(1);
  deger.add(2);
  deger.add(3);

  print("Dinamik listenin son değeri : "+deger[deger.length-1].toString());
  for(int d in deger) print(d);
  print("**********************************");
  deger.remove(2);
  for(int d in deger) print(d);

  List<String> sehirler=["Ankara","İstanbul","İzmir"];
  sehirler.add("Samsun");
  sehirler.add("Muğla");
  sehirler.add("Elazığ");
  sehirler.add("Manisa");

  for(String sehir in sehirler) print(sehir);

  print("*********************************");
  sehirler.removeAt(2);
  for(String sehir in sehirler) print(sehir);

  //set kullanımı : aynı olan degerleri listeye eklemeyen sistem.

  print("***********************************");
  Set<String> katilimcilar=Set();
  katilimcilar.add("Yunus");
  katilimcilar.add("Osman");
  katilimcilar.add("Yunus");
  katilimcilar.add("Onur");
  katilimcilar.add("Yunus");

  for(String katilim in katilimcilar) print(katilim);

  //Map kullanımı : bir nevi nesne tanımlamadır.
  print("**********************************");

  Map<String,Object> kisiler=Map();
  kisiler["Ad1"]="Yunus";
  kisiler["Yas1"]=23;
  kisiler["Durum1"]=true;
  kisiler["Ad2"]="Onur";
  kisiler["Yas2"]=21;
  kisiler["Durum2"]=false;

  for(String key in kisiler.keys) print("Key : $key");

  print("********************************");
  for(Object value in kisiler.values) print("Değer : $value");

  print("*********************************");
  kisiler.forEach((anahtar,deger)=>print("$anahtar : $deger"));

}