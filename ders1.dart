main(List<String> args) {
  for(int i=0;i<20;i++){
    print(i);
  }
  print("İlk Çalışma.");

  String isim="Yunus";
  String soyisim="Köse";
  var numara=161602006;

  print("Kullanıcının ismi $isim'dur ve soyismi $soyisim'dir. $numara numaralılı öğrencinin isim soyisim uzunluğu ${isim.length+soyisim.length} 'dur..");

  double en=52.6;
  double boy=86.2;
  print("Eni $en ve boyu $boy olan tahtanın alanı ${en*boy}");

  final sayi=112.5;
  const yazi="değiştirilemez yazı. Final de değiştirelemez tek farkı final ile tanımlanan değer atanmadan bellekte yer ayrılmaz.";

  print("$sayi $yazi");
}