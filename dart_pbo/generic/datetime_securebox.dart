class DateTimeSecureBox {
  final DateTime? _data;
  final String? _pin;

  DateTimeSecureBox(this._data, this._pin);

  DateTime? getData(String pin) {
    if (pin == _pin) {
      return _data!;
    } else {
      return null;
    }
  }
}
