class IntSecureBox {
  final int? _data;
  final String? _pin;

  IntSecureBox(this._data, this._pin);

  int? getData(String pin) {
    if (pin == _pin) {
      return _data!;
    } else {
      return null;
    }
  }
}
