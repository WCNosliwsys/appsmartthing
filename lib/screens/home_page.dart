import 'package:appsmartthing/model/equipo_model.dart';
import 'package:appsmartthing/screens/ajustar_page.dart';
import 'package:appsmartthing/screens/equipos_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<EquipoModel> equipos = [
      EquipoModel(fabricante: "TV Cuarto", modelo: "Fenix", mac: "50:50:FC:30:PT:40",img:"assets/tv.png" ),
      EquipoModel(fabricante: "Refrigeradora", modelo: "TP-KINT", mac: "30:40:FC:30:PT:40",img:"assets/refrigerator.png" ),
      EquipoModel(fabricante: "Puerta Sala", modelo: "DO-KING", mac: "70:70:FC:30:PT:40",img:"assets/door.png" ),
      EquipoModel(fabricante: "Cochera", modelo: "CO-LG20", mac: "90:90:FC:30:PT:40",img:"assets/car.png" ),
    ];

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
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Espacios",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 200,
              child: SingleChildScrollView(
                  scrollDirection: axisDirectionToAxis(AxisDirection.right),
                  child: Row(
                    children: [
                      widget_Espacio("A", context),
                      widget_Espacio("B", context),
                      widget_Espacio("C", context),
                      widget_Espacio("D", context),
                      widget_Espacio("E", context),
                      widget_Espacio("F", context),
                      widget_Espacio("G", context),
                      widget_Espacio("H", context),
                    ],
                  )),
            ),
            Text(
              "Equipos conectados",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
            ),
            Row(
              children: [
                widget_equipo(equipos[0].img, equipos[0].fabricante, context,equipos[0]),
                widget_equipo(equipos[1].img, equipos[1].fabricante, context,equipos[1]),
              ],
            ),
            Row(
              children: [
                widget_equipo(equipos[2].img, equipos[2].fabricante, context,equipos[2]),
                widget_equipo(equipos[3].img, equipos[3].fabricante, context,equipos[3]),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget widget_equipo(String imagen, String titulo, context,EquipoModel data) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Equipos_page(miData: data,)));
      },
      child: Container(
        width: 170.0,
        height: 170.0,
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.07), blurRadius: 3, offset: Offset(3, 3)),
            BoxShadow(color: Colors.black.withOpacity(0.07), blurRadius: 3, offset: Offset(-3, 3)),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagen,
              width: 100,
              height: 100,
            ),
            Text(titulo)
          ],
        ),
      ),
    );
  }

  Widget widget_Espacio(String espacio, context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => AjustarPage()));
      },
      child: Container(
        width: 120.0,
        height: 120.0,
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.07), blurRadius: 3, offset: Offset(4, 4)),
            BoxShadow(color: Colors.black.withOpacity(0.07), blurRadius: 3, offset: Offset(-4, 4)),
          ],
        ),
        child: Center(
            child: Text(
          espacio,
          style: TextStyle(color: Color(0xff064a88), fontSize: 25, fontWeight: FontWeight.w700),
        )),
      ),
    );
  }
}
