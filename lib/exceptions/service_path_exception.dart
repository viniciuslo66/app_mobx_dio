class ServicePathException<T> implements Exception {
  final T data;

  //avisará caso o ENUM usado não exista.
  ServicePathException(this.data);
  @override
  String toString() {
    return "Doesnt found this enum: ";
  }
}
