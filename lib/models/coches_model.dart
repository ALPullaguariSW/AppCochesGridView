class Coche {
  final String marca;
  final String modelo;
  final int anio;
  final String imagen;

  Coche({required this.marca, required this.modelo, required this.anio, required this.imagen});

  factory Coche.fromJson(Map<String, dynamic> json) {
    return Coche(
      marca: json['marca'],
      modelo: json['modelo'],
      anio: json['anio'],
      imagen: json['imagen'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'marca': marca,
      'modelo': modelo,
      'anio': anio,
      'imagen': imagen,
    };
  }
}