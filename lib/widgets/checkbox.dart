import 'package:flutter/material.dart';

class Checkbox extends StatefulWidget {
  _CheckboxState createState() => _CheckboxState();
}

class _CheckboxState extends State<Checkbox> {
  @override
  Widget build(BuildContext context) {
    bool _valueCheck = false;
    return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
      return Center(
        child: CheckboxListTile(
          value: _valueCheck,
          onChanged: (bool value) {
            setState(() {
              _valueCheck = value;
            });
          },
        ),
      );
    });
  }
}

class _FormSave extends StatefulWidget {
  @override
  __FormSaveState createState() => __FormSaveState();
}

class __FormSaveState extends State<_FormSave> {
  final _formkey = GlobalKey<FormState>();

  final especialidadcontroller = TextEditingController();

  final frecuenciacontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Form(
        key: _formkey,
        child: ListView(children: [
          TextFormField(
              controller: especialidadcontroller,
              validator: (value) {
                if (value.isEmpty) {
                  return "Especifique especialidad";
                }
                return null;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Especialidad",
              )),
          SizedBox(
            height: 15,
          ),
          TextFormField(
              expands: false,
              keyboardType: TextInputType.number,
              maxLength: 3,
              controller: frecuenciacontroller,
              validator: (value2) {
                if (value2.isEmpty) {
                  return "Frecuencia en min";
                }
                return null;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Frecuencia en min",
              )),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
              onPressed: () {
                if (_formkey.currentState.validate()) {
                  print(especialidadcontroller.text);
                  print(dropdownValue);
                  setState(() {});

                  /*  Operation.insert(Note(
                          title: especialidadcontroller.text,
                          content: dropdownValue)); */
                }
              },
              child: Title(color: Colors.blueAccent, child: Text("SAVE")))
        ]),
      ),
    );
  }
}

class Frecuencia extends StatefulWidget {
  Frecuencia({Key key}) : super(key: key);

  @override
  _FrecuenciaState createState() => _FrecuenciaState();
}

String dropdownValue = "Seleccione un dia ";

class _FrecuenciaState extends State<Frecuencia> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        labelText: "Dias laborables",
        border: OutlineInputBorder(),
      ),
      value: dropdownValue,
      isExpanded: true,
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>[
        "Seleccione un dia ",
        'Lunes',
        'Martes',
        'Miercoles',
        'Jueves',
        "Viernes",
        "Sabado",
        "Domingo"
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class Textbox extends StatefulWidget {
  @override
  _TextboxState createState() => _TextboxState();
}

class _TextboxState extends State<Textbox> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        //controller: diascontroller,
        validator: (value) {
          if (value.isEmpty) {
            return "Especifique frecuencia";
          }
          return null;
        },
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: "Indique Frecuencia",
        ));
  }
}
/*  ElevatedButton(
                      onPressed: () {
                        formKey.currentState.save();
                        print(producto.especialidad);
                        FirebaseFirestore.instance
                            .collection("especialidad")
                            .add({
                          "especialidad": producto.especialidad,
                          "frecuencia": producto.frecuencia,
                          "descanso": producto.descanso,
                          "desde_maniana": producto.desde_maniana,
                          "hasta_maniana": producto.hasta_maniana,
                          "desde_tarde": producto.desde_tarde,
                          "hasta_tarde": producto.hasta_tarde,
                        });
                      }, */
