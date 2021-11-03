class Util {
  static bool validarOpcion(var opcion) {
    bool validador = false;
    if (int.parse(opcion) > 3) {
      validador = true;
    }
    return validador;
  }
}
