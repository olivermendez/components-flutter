import 'package:flutter/material.dart';
import 'package:flutter_components/providers/menu_provider.dart';
import 'package:flutter_components/utils/iconos_string_util.dart';

class HomePage extends StatelessWidget {
  //const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Componentes de Flutter"),
        ),
        body: _widgets());
  }

  Widget _widgets() {
    //print(menuProvider.opciones);
    //menuProvider.cargarData();

    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(children: _crearItemswithMap(snapshot.data));
      },
    );
  }

  List<Widget> _crearItemswithMap(List<dynamic>? data) {
    final List<Widget> opciones = [];

    data!.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.arrow_circle_up_outlined),
        onTap: () {},
      );
      opciones.add(widgetTemp);
    });

    return opciones;
  }
}
