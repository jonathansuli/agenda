import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crud/Myhome_page.dart';
import 'package:crud/pages/model_esp.dart';

import 'package:flutter/material.dart';

class Especialidades extends StatefulWidget {
  @override
  _EspecialidadesState createState() => _EspecialidadesState();
}

ProductoModel nueva_esp = new ProductoModel();

class _EspecialidadesState extends State<Especialidades> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Especialidades disponibles"),
        centerTitle: true,
      ),
      body: StreamBuilder(
          stream:
              FirebaseFirestore.instance.collection("especialidad").snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            List<DocumentSnapshot> docs = snapshot.data.docs;
            return (docs.length == 0)
                ? Center(
                    child: Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: Text(
                          "Por favor agregue una especialidad...",
                          style: TextStyle(fontSize: 22),
                        )))
                : ListView.builder(
                    itemBuilder: (context, index) {
                      Map<String, dynamic> data = docs[index].data();
                      print(data);
                      data == null
                          ? data = "" as Map<String, dynamic>
                          : SizedBox();

                      return Column(
                        children: [
                          ListTile(
                            title: Text(
                              data["especialidad"],
                              style: TextStyle(fontSize: 25),
                            ),
                            onTap: () {
                              nueva_esp.especialidad = data["especialidad"];
                              nueva_esp.descanso = data["descanso"];
                              nueva_esp.frecuencia = data["frecuencia"];
                              nueva_esp.desde_maniana = data["desde_maniana"];
                              nueva_esp.hasta_maniana = data["hasta_maniana"];
                              nueva_esp.desde_tarde = data["desde_tarde"];
                              nueva_esp.hasta_tarde = data["hasta_tarde"];
                              nueva_esp.id = data["id"];
                              nueva_esp.dia_disp_lunes = data["dia_disp_lunes"];
                              nueva_esp.dia_disp_martes =
                                  data["dia_disp_martes"];
                              nueva_esp.dia_disp_miercoles =
                                  data["dia_disp_miercoles"];
                              nueva_esp.dia_disp_jueves =
                                  data["dia_disp_jueves"];
                              nueva_esp.dia_disp_viernes =
                                  data["dia_disp_viernes"];
                              nueva_esp.dia_disp_sabado =
                                  data["dia_disp_sabado"];
                              nueva_esp.dia_disp_domingo =
                                  data["dia_disp_domingo"];

                              Navigator.pushNamed(context, 'Myhome_page.dart',
                                  arguments: ProductoModel(
                                    especialidad: nueva_esp.especialidad,
                                    frecuencia: nueva_esp.frecuencia,
                                    descanso: nueva_esp.descanso,
                                    desde_maniana: nueva_esp.desde_maniana,
                                    hasta_maniana: nueva_esp.hasta_maniana,
                                    desde_tarde: nueva_esp.desde_tarde,
                                    hasta_tarde: nueva_esp.hasta_tarde,
                                    id: nueva_esp.id,
                                    dia_disp_lunes: nueva_esp.dia_disp_lunes,
                                    dia_disp_martes: nueva_esp.dia_disp_martes,
                                    dia_disp_miercoles:
                                        nueva_esp.dia_disp_miercoles,
                                    dia_disp_jueves: nueva_esp.dia_disp_jueves,
                                    dia_disp_viernes:
                                        nueva_esp.dia_disp_viernes,
                                    dia_disp_sabado: nueva_esp.dia_disp_sabado,
                                    dia_disp_domingo:
                                        nueva_esp.dia_disp_domingo,
                                  ));
                            },
                          )
                        ],
                      );
                    },
                    itemCount: docs.length,
                  );
          }),
      /*  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Text(
                "Por favor agregue una especialidad...",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 400, left: 250),
            child: ElevatedButton(
                style: ButtonStyle(),
                child: Text(
                  "Siguiente",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () =>
                    Navigator.pushNamed(context, 'Myhome_page.dart')),
          )
        ],
      ), */
      floatingActionButton: _crearbotton(context),
    );
  }
}

_crearbotton(BuildContext context) {
  return FloatingActionButton(
      child: Text(
        "+",
        style: TextStyle(fontSize: 30),
      ),
      onPressed: () => Navigator.pushNamed(context, "esp_nueva.dart"));
}

/* Widget _crearListado() {
  return FutureBuilder(
    future: productosProvider.cargarProductos(),
    builder:
        (BuildContext context, AsyncSnapshot<List<ProductoModel>> snapshot) {
      if (snapshot.hasData) {
        final productos = snapshot.data;

        return ListView.builder(
          itemCount: productos.length,
          itemBuilder: (context, i) => _crearItem(context, productos[i]),
        );
      } else {
        return Center(child: CircularProgressIndicator());
      }
    },
  );
}

Widget _crearItem(BuildContext context, ProductoModel producto) {
  return Dismissible(
      key: UniqueKey(),
      background: Container(
        color: Colors.red,
      ),
      onDismissed: (direccion) {
        //   productosProvider.borrarProducto(producto.id);
      },
      child: Card(
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text(producto.especialidad),
              onTap: () =>
                  Navigator.pushNamed(context, 'producto', arguments: producto),
            ),
          ],
        ),
      ));
}
 */
