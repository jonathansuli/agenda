import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crud/pages/especialidades.dart';
import 'package:crud/pages/model_esp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

bool _valueCheck = false;
bool _valueCheck2 = false;
bool _valueCheck3 = false;
bool _valueCheck4 = false;
bool _valueCheck5 = false;
bool _valueCheck6 = false;
bool _valueCheck7 = false;
var flag = false;
var flag2 = false;
var flag3 = false;
var flag4 = false;
var flag5 = false;
var flag6 = false;
var flag7 = false;

final formKey = GlobalKey<FormState>();

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final ProductoModel nueva_esp = ModalRoute.of(context).settings.arguments;
    //nueva_esp.dia_disp_martes == ""
    // Operation.notes();
    return Scaffold(
        appBar: AppBar(
          title: Text("${nueva_esp.especialidad}"),
        ),
        body: Container(
            padding: EdgeInsets.all(20),
            child: Form(
                key: formKey,
                child: ListView(shrinkWrap: true, children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 30, top: 10),
                    child: especialidad(),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Expanded(child: frecuencia()),
                      SizedBox(
                        width: 15,
                      ),
                      //  Text("min"),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(child: descanso()),
                      SizedBox(
                        width: 15,
                      ),
                      //Text("min"),
                      SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 110,
                        height: 45,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if (flag == false) {
                                  flag = true;
                                  flag2 = false;
                                  flag3 = false;
                                  flag4 = false;
                                  flag5 = false;
                                  flag6 = false;
                                  flag7 = false;
                                } else {
                                  flag = false;
                                }
                              });
                            },
                            child: Title(
                                color: Colors.blueAccent,
                                child: Text("LUNES"))),
                      ),
                      Expanded(
                        child: SwitchListTile(
                          value: nueva_esp.dia_disp_lunes,
                          // title: Text('Disponible'),
                          activeColor: Colors.blueAccent,
                          onChanged: (value) => setState(() {
                            nueva_esp.dia_disp_lunes = value;
                          }),
                        ),
                      )
                    ],
                  ),
                  flag == true ? _horario() : SizedBox(),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 110,
                        height: 45,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if (flag2 == false) {
                                  flag2 = true;
                                  flag = false;
                                  flag3 = false;
                                  flag4 = false;
                                  flag5 = false;
                                  flag6 = false;
                                  flag7 = false;
                                } else {
                                  flag2 = false;
                                }
                              });
                            },
                            child: Title(
                                color: Colors.blueAccent,
                                child: Text("MARTES"))),
                      ),
                      Expanded(
                        child: SwitchListTile(
                          value: nueva_esp.dia_disp_martes,
                          // title: Text('Disponible'),
                          activeColor: Colors.blueAccent,
                          onChanged: (value) => setState(() {
                            nueva_esp.dia_disp_martes = value;
                          }),
                        ),
                      )
                    ],
                  ),
                  flag2 == true ? _horario() : SizedBox(),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 110,
                        height: 45,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if (flag3 == false) {
                                  flag3 = true;
                                  flag2 = false;
                                  flag = false;
                                  flag4 = false;
                                  flag5 = false;
                                  flag6 = false;
                                  flag7 = false;
                                } else {
                                  flag3 = false;
                                }
                              });
                            },
                            child: Title(
                                color: Colors.blueAccent,
                                child: Text("MIERCOLES"))),
                      ),
                      Expanded(
                        child: SwitchListTile(
                          value: nueva_esp.dia_disp_miercoles,
                          // title: Text('Disponible'),
                          activeColor: Colors.blueAccent,
                          onChanged: (value) => setState(() {
                            nueva_esp.dia_disp_miercoles = value;
                          }),
                        ),
                      )
                    ],
                  ),
                  flag3 == true ? _horario() : SizedBox(),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 110,
                        height: 45,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if (flag4 == false) {
                                  flag4 = true;
                                  flag2 = false;
                                  flag3 = false;
                                  flag = false;
                                  flag5 = false;
                                  flag6 = false;
                                  flag7 = false;
                                } else {
                                  flag4 = false;
                                }
                              });
                            },
                            child: Title(
                                color: Colors.blueAccent,
                                child: Text("JUEVES"))),
                      ),
                      Expanded(
                        child: SwitchListTile(
                          value: nueva_esp.dia_disp_jueves,
                          // title: Text('Disponible'),
                          activeColor: Colors.blueAccent,
                          onChanged: (value) => setState(() {
                            nueva_esp.dia_disp_jueves = value;
                          }),
                        ),
                      )
                    ],
                  ),
                  flag4 == true ? _horario() : SizedBox(),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 110,
                        height: 45,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if (flag5 == false) {
                                  flag5 = true;
                                  flag2 = false;
                                  flag3 = false;
                                  flag4 = false;
                                  flag = false;
                                  flag6 = false;
                                  flag7 = false;
                                } else {
                                  flag5 = false;
                                }
                              });
                            },
                            child: Title(
                                color: Colors.blueAccent,
                                child: Text("VIERNES"))),
                      ),
                      Expanded(
                        child: SwitchListTile(
                          value: nueva_esp.dia_disp_viernes,
                          // title: Text('Disponible'),
                          activeColor: Colors.blueAccent,
                          onChanged: (value) => setState(() {
                            nueva_esp.dia_disp_viernes = value;
                          }),
                        ),
                      )
                    ],
                  ),
                  flag5 == true ? _horario() : SizedBox(),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 110,
                        height: 45,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if (flag6 == false) {
                                  flag6 = true;
                                  flag2 = false;
                                  flag3 = false;
                                  flag4 = false;
                                  flag5 = false;
                                  flag = false;
                                  flag7 = false;
                                } else {
                                  flag6 = false;
                                }
                              });
                            },
                            child: Title(
                                color: Colors.blueAccent,
                                child: Text("SABADO"))),
                      ),
                      Expanded(
                        child: SwitchListTile(
                          value: nueva_esp.dia_disp_sabado,
                          // title: Text('Disponible'),
                          activeColor: Colors.blueAccent,
                          onChanged: (value) => setState(() {
                            nueva_esp.dia_disp_sabado = value;
                          }),
                        ),
                      )
                    ],
                  ),
                  flag6 == true ? _horario() : SizedBox(),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 110,
                        height: 45,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if (flag7 == false) {
                                  flag7 = true;
                                  flag2 = false;
                                  flag3 = false;
                                  flag4 = false;
                                  flag5 = false;
                                  flag6 = false;
                                  flag = false;
                                } else {
                                  flag7 = false;
                                }
                              });
                            },
                            child: Title(
                                color: Colors.blueAccent,
                                child: Text("DOMINGO"))),
                      ),
                      Expanded(
                        child: SwitchListTile(
                          value: nueva_esp.dia_disp_domingo,
                          // title: Text('Disponible'),
                          activeColor: Colors.blueAccent,
                          onChanged: (value) => setState(() {
                            nueva_esp.dia_disp_domingo = value;
                          }),
                        ),
                      )
                    ],
                  ),
                  flag7 == true ? _horario() : SizedBox(),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        formKey.currentState.save();
                        // print(producto.especialidad);
                        print(producto.especialidad);
                        print(nueva_esp.id);
                        FirebaseFirestore.instance
                            .collection("especialidad")
                            .doc(nueva_esp.id)
                            .update({
                          "especialidad": producto.especialidad,
                          "frecuencia": producto.frecuencia,
                          "descanso": producto.descanso,
                          "desde_maniana": producto.desde_maniana,
                          "hasta_maniana": producto.hasta_maniana,
                          "desde_tarde": producto.desde_tarde,
                          "hasta_tarde": producto.hasta_tarde,
                          "dia_disp_lunes": nueva_esp.dia_disp_lunes,
                          "dia_disp_martes": nueva_esp.dia_disp_martes,
                          "dia_disp_miercoles": nueva_esp.dia_disp_miercoles,
                          "dia_disp_jueves": nueva_esp.dia_disp_jueves,
                          "dia_disp_viernes": nueva_esp.dia_disp_viernes,
                          "dia_disp_sabado": nueva_esp.dia_disp_sabado,
                          "dia_disp_domingo": nueva_esp.dia_disp_domingo,
                        });

                        Navigator.pop(context);
                      },
                      child: Title(
                          color: Colors.blueAccent,
                          child: Text("GUARDAR CAMBIOS")))
                ]))));
  }
}

ProductoModel producto = ProductoModel();
Widget especialidad() {
  return TextFormField(
      initialValue: nueva_esp.especialidad,

      //controller: especialidadcontroller,
      onChanged: (value) => nueva_esp.especialidad = value,
      onSaved: (value) => producto.especialidad = value,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        labelText: "Especialidad",
      ));
}

Widget frecuencia() {
  return TextFormField(
      initialValue: nueva_esp.frecuencia.toString(),
      keyboardType: TextInputType.number,
      maxLength: 3,

      // controller: frecuenciacontroller,
      onChanged: (value) => nueva_esp.frecuencia = int.parse(value),
      onSaved: (value) => producto.frecuencia = int.parse(value),
      validator: (value2) {
        if (value2.isEmpty) {
          return "Frecuencia en min";
        }
        return null;
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        labelText: "Frecuencia",
      ));
}

Widget descanso() {
  return TextFormField(
      initialValue: nueva_esp.descanso.toString(),
      expands: false,
      keyboardType: TextInputType.number,
      maxLength: 3,
      // controller: frecuenciacontroller,
      onChanged: (value) => nueva_esp.descanso = int.parse(value),
      onSaved: (value) => producto.descanso = int.parse(value),
      validator: (value) {
        if (value.isEmpty) {
          return "Ingrese Frecuencia";
        }
        return null;
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        labelText: "Descanso",
      ));
}

Widget _horario() {
  return Column(
    children: [
      Row(children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20, right: 20),
          child: Text("Turno Mañana"),
        ),
        Expanded(
          child: TextFormField(
              initialValue: nueva_esp.desde_maniana.toString(),
              keyboardType: TextInputType.number,
              maxLength: 6,
              onChanged: (value) =>
                  nueva_esp.desde_maniana = double.parse(value),
              onSaved: (value) => producto.desde_maniana = double.parse(value),

              // onChanged: (value) => LunesModel.desde,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                labelText: "Desde",
              )),
        ),
        SizedBox(
          width: 60,
        ),
        Expanded(
          child: TextFormField(
              initialValue: nueva_esp.hasta_maniana.toString(),
              maxLength: 5,
              keyboardType: TextInputType.number,
              onChanged: (value) =>
                  nueva_esp.hasta_maniana = double.parse(value),
              onSaved: (value) => producto.hasta_maniana = double.parse(value),
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                labelText: "Hasta",
              )),
        )
      ]),
      Divider(
        thickness: 5,
      ),
      SizedBox(
        height: 10,
      ),
      Row(children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20, right: 35),
          child: Text("Turno Tarde"),
        ),
        Expanded(
          child: TextFormField(
              initialValue: nueva_esp.desde_tarde.toString(),
              keyboardType: TextInputType.number,
              maxLength: 5,
              onChanged: (value) => nueva_esp.desde_tarde = double.parse(value),
              onSaved: (value) => producto.desde_tarde = double.parse(value),
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                labelText: "Desde",
              )),
        ),
        SizedBox(
          width: 50,
        ),
        Expanded(
          child: TextFormField(
              initialValue: nueva_esp.hasta_tarde.toString(),
              maxLength: 5,
              keyboardType: TextInputType.number,
              onChanged: (value) => nueva_esp.hasta_tarde = double.parse(value),
              onSaved: (value) => producto.hasta_tarde = double.parse(value),
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                labelText: "Hasta",
              )),
        )
      ]),
    ],
  );
}
