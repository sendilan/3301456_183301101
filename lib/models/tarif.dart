class Tarif {
  String _tarifAdi;
  String _tarifSuresi;
  String _tarifDetay;
  String _tarifKucukResim;
  String _tarifBuyukResim;

  Tarif(this._tarifAdi, this._tarifBuyukResim, this._tarifDetay,
      this._tarifKucukResim, this._tarifSuresi);

  String get tarifBuyukResim => _tarifBuyukResim;

  set tarifBuyukResim(String value) {
    _tarifBuyukResim = value;
  }

  String get tarifKucukResim => _tarifKucukResim;

  set tarifKucukResim(String value) {
    _tarifKucukResim = value;
  }

  String get tarifDetay => _tarifDetay;

  set tarifDetay(String value) {
    _tarifDetay = value;
  }

  String get tarifSuresi => _tarifSuresi;

  set tarifSuresi(String value) {
    _tarifSuresi = value;
  }

  String get tarifAdi => _tarifAdi;

  set tarifAdi(String value) {
    _tarifAdi = value;
  }


}