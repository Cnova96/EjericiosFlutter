class Pedido {
  String _nombre;
  String _apellido;
  String _telefono;
  List<String?> _ingredientes;
  String _size;
  double _porciones;

  Pedido(
    this._nombre,
    this._apellido,
    this._ingredientes,
    this._porciones,
    this._telefono,
    this._size,
  );

  set setNombre(String name) {
    _nombre = name;
  }

  String get getNombre {
    return _nombre;
  }

  set setSize(String size) {
    _size = size;
  }

  String get getSize {
    return _size;
  }

  set setApellido(String lastname) {
    _apellido = lastname;
  }

  String get getApellido {
    return _apellido;
  }

  set setTelefono(String phone) {
    _telefono = phone;
  }

  String get getTelefono {
    return _telefono;
  }

  set setIngredientes(List<String?> ingre) {
    _ingredientes = ingre;
  }

  List<String?> get getIngredientes {
    return _ingredientes;
  }

  set setPorciones(double porcio) {
    _porciones = porcio;
  }

  double get getPorciones {
    return _porciones;
  }

  /* @override
  String toString() {
    return """nombre: $_nombre,
     apellido:$_apellido,
     telefono: $_telefono,
      porciones: $_porciones,
      ingredientes: $_ingredientes""";
  } */
}
