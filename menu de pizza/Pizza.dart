class Pizza {
  double? _precio = 0.0;
  String? _size = "";
  String? _nombre = "";

  Pizza({double? precio, String? size, String? nombre}) {
    this._precio = precio;
    this._nombre = nombre;
    this._size = size;
    this.pizza();
  }

  void pizza() {
    switch (this._nombre) {
      case "1":
        this._nombre = "pizza de peperoni";
        break;
      case "2":
        this._nombre = "pizza hawaiana";
        break;
      case "3":
        this._nombre = "pizza 3 carnes";
        break;
    }
    switch (this._size) {
      case "1":
        this._size = "personal";
        this._precio = 20000;
        break;
      case "2":
        this._size = "Mediana";
        this._precio = 30000;
        break;
      case "3":
        this._size = "Grande";
        this._precio = 50000;
        break;
    }
  }

  set size(String? size) {
    this._size = size;
  }

  String? get size {
    return this._size;
  }

  set precio(double? precio) {
    this._precio = precio;
  }

  double? get precio {
    return this._precio;
  }

  set nombre(String? nombre) {
    this._nombre = nombre;
  }

  String? get nombre {
    return this._nombre;
  }
}
