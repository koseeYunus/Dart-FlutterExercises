class Student{
  String _numara;
  String _isim;
  String _ders;
  bool _basari;

  Student(this._numara,this._isim,this._ders,this._basari){
    print("Nesne oluşturuldu.");
  }

  Student.basariBelirsiz(this._numara,this._isim,this._ders){
    print("Nesnenin başarısı bekleniyor.");
  }

  void set numaraAta(String numara){
    numara.length==9 ? this._numara=numara : print("Girilen numara 9 hanali olamalıdır.");
  }

  void set isimAta(String isim) =>this._isim=isim;

  void set dersAta(String ders) =>this._ders=ders;

  void set basariAta(bool basari) =>this._basari=basari;

  String get numaraGetir => _numara;

  String get isimGetir => _isim;

  String get dersGetir => _ders;
  

  bool get basariGetir => _basari;

  void bilgileriYaz(){
    print("$_numara lı ve $_isim li öğrenci $_ders dersindeki başarı durumu : $_basari");
  }
}