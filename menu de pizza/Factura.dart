class Factura {
  double? _valorPagar;
  double? valorUnidad;
  int? _cantidadItem;
  String? _productoVendido;

  set valorPagar(double? valorPagar) {
    this._valorPagar = valorPagar;
  }

  double? get valorPagar {
    return this._valorPagar;
  }

  set cantidadItem(int? cantidadItem) {
    this._cantidadItem = cantidadItem;
  }

  int? get cantidadItem {
    return this._cantidadItem;
  }

  set productoVendido(String? productoVendido) {
    this._productoVendido = productoVendido;
  }

  String? get productoVendido {
    return this._productoVendido;
  }

  Factura(this._valorPagar, this._cantidadItem, this._productoVendido,
      this.valorUnidad);

  void calculartotal() {
    this._valorPagar = this.cantidadItem! * this.valorUnidad!;
  }

  void imprimirFactura() {
    print("**************************************");
    print("************Factura*******************");
    print("**************************************");
    print(" ");
    print("Producto Vendido: $productoVendido");
    print("cantidad de procutos: $cantidadItem");
    print("Valor unitario del producto: $valorUnidad");
    print("Valor total de la compra: $valorPagar");
    print("**************************************");
    print("Vendedor: carlos nova");
    print("**************************************");
  }
}
