import 'package:flutter/material.dart';
import '../models/coches_model.dart';

class CocheDetails extends StatelessWidget {
  final Coche coche;

  const CocheDetails({Key? key, required this.coche}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${coche.marca} ${coche.modelo}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset('assets/images/${coche.imagen}'),
            ),
            SizedBox(height: 16),
            Text(
              'Marca: ${coche.marca}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Modelo: ${coche.modelo}',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Año: ${coche.anio}',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}