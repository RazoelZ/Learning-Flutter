//persegi panjang
class persegi_panjang {
  double? _panjang;
  double? _lebar;

  void set lebar(double value) {
    if (value < 0) {
      value *= -1;
    }
    _lebar = value;
  }

  void setPanjang(double value) {
    if (value < 0) {
      value *= -1;
    }
    this._panjang = value;
  }

  double get lebar {
    return _lebar!;
  }

  double getPanjang() {
    return this._panjang!;
  }

  double hitungluas() {
    return this._panjang! * this._lebar!;
  }

  double get luas => _panjang! * _lebar!;
}// Path: bin\latihanlist.dartc

