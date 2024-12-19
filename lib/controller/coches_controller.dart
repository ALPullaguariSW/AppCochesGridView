import 'package:flutter/material.dart';
import '../models/coches_model.dart';

class CochesController with ChangeNotifier {
  final List<Coche> _coches = [
    Coche(marca: 'Renault', modelo: 'Twingo', anio: 2020, imagen: 'car1.png'),
    Coche(marca: 'Citroën', modelo: 'C5', anio: 2019, imagen: 'car2.png'),
    Coche(marca: 'Ford', modelo: 'Focus', anio: 2018, imagen: 'car3.png'),
    Coche(marca: 'Porsche', modelo: 'Carrera', anio: 2021, imagen: 'car4.png'),
    Coche(marca: 'Ferrari', modelo: 'F340', anio: 2022, imagen: 'car5.png'),
  ];

  List<Coche> get coches => _coches;

  void addCoche(Coche coche) {
    _coches.add(coche);
    notifyListeners();
  }

  void removeCoche(Coche coche) {
    _coches.remove(coche);
    notifyListeners();
  }

  void updateCoche(int index, Coche coche) {
    if (index >= 0 && index < _coches.length) {
      _coches[index] = coche;
      notifyListeners();
    }
  }
}
