class Contacto {
  String _name;
  String _tel;
  String _address;
  String _email;

  Contacto(this._name, this._tel, this._address, this._email);

  String get email => _email;

  set email(String value) {
    _email = value;
  }

  String get address => _address;

  set address(String value) {
    _address = value;
  }

  String get tel => _tel;

  set tel(String value) {
    _tel = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  @override
  String toString() {
    return 'Contacto Nombre: $_name,Telefono:$_tel, Direccion: $_address,Email: $_email';
  }
}
