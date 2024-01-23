import 'package:appsmartthing/model/equipo_model.dart';
import 'package:flutter/material.dart';

class Equipos_page extends StatefulWidget {
  const Equipos_page({super.key, required this.miData});
  final EquipoModel miData;

  @override
  State<Equipos_page> createState() => _Equipos_pageState();
}

class _Equipos_pageState extends State<Equipos_page> {
  bool apagado = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Navicure",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff064a88),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Fabricante:"),
                Text(
                  widget.miData.fabricante,
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Modelo:"),
                Text(
                  widget.miData.modelo,
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("MAC:"),
                Text(
                  widget.miData.mac,
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                apagado = !apagado;
                setState(() {});
              },
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    border: Border.all(color: Color(0xff064a88), width: 2)),
                child: Center(
                  child: Text(
                    apagado ? "Encender" : "Apagar",
                    style: TextStyle(color: Color(0xff064a88), fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
