//importacion de libreria material
import 'package:flutter/material.dart';

//Crea la clase y el estado a cambiar
class BotonFlotante extends StatefulWidget {
  const BotonFlotante({super.key});
  _BotonFlotante createState() => _BotonFlotante();
}

//Crear los widgets a mostrar
class _BotonFlotante extends State<BotonFlotante> {
  int _i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Botón Flotante'),
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            Text('Número de clicks:', style: TextStyle(fontSize: 20)),
            Text('$_i')
          ])),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
              child: Icon(Icons.add),
              foregroundColor: Colors.white,
              onPressed: () => setState(() => _i++)
              /*onPressed: () {
                      setState(() {
                        txt="Hola mundo";
          
                      });
                    },*/
              ),
          FloatingActionButton(
              child: Icon(Icons.remove),
              foregroundColor: Colors.white,
              onPressed: () => setState(() => _i--)
              /* onPressed: () {
                      setState(() {
          //txt="";
                      });
                    },*/
              ),
          FloatingActionButton(
              child: Icon(Icons.refresh),
              foregroundColor: Colors.white,
              onPressed: () => setState(() => _i = 0)
              /* onPressed: () {
                      setState(() {
          //txt="";
                      });
                    },*/
              ),
        ],
      ),
    );
  }
}
