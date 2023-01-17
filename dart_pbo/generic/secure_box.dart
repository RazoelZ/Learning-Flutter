class SecureBox<T> {
  final T? _data;
  final String? _pin;

  SecureBox(this._data, this._pin);

  T? getData(String pin) {
    if (pin == _pin) {
      return _data!;
    } else {
      return null;
    }
  }
}
