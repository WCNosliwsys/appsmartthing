import 'package:flutter/material.dart';

class AjustarPage extends StatefulWidget {
  const AjustarPage({super.key});

  @override
  State<AjustarPage> createState() => _AjustarPageState();
}

class _AjustarPageState extends State<AjustarPage> {
  double Slider_Value_Luz = 51;
  double Slider_Value_Temperatura = 51;
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Text(
              "Ajustar",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              "Luz",
              style: TextStyle(fontSize: 15),
            ),
          ),
          Slider(
            value: Slider_Value_Luz,
            max: 100,
            min: 0,
            divisions: 100,
            label: Slider_Value_Luz.toInt().toString(),
            onChanged: (value) {
              Slider_Value_Luz = value;
              setState(() {});
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("0"),
                Text("50"),
                Text("100"),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              "Temperatura",
              style: TextStyle(fontSize: 15),
            ),
          ),
          Slider(
            value: Slider_Value_Temperatura,
            max: 100,
            min: 0,
            divisions: 100,
            label: Slider_Value_Luz.toInt().toString(),
            onChanged: (value) {
              Slider_Value_Temperatura = value;
              setState(() {});
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("0"),
                Text("50"),
                Text("100"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
