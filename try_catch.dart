main(List<String> args) {
  try{
    paraYatir(-25);
  }
  catch(e){
    print("Hata : "+e.hataGoster());
  }
  finally{
    print("try-catch çalıştı.");
  }
}

paraYatir(int miktar){
  if(miktar<0){
    throw new paraYatirmaException();
  }
  else print("Hesabınıza $miktar TL Yatırıldı.");
}

class paraYatirmaException implements Exception{
  String hataGoster() => "Negatif Sayı Girdiniz!";
}