import 'package:flutter/material.dart';
import 'package:flutter_application_1/Recuperar.dart';
import 'package:flutter_application_1/ProfilePage.dart';

void main() => runApp(const MiApp());

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Examen Practico',
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: cuerpo(context),
    );
  }
}

Widget cuerpo(BuildContext context) {
  return Container(
    decoration: const BoxDecoration(
        image: DecorationImage(
      image: NetworkImage(
          ''),
      fit: BoxFit.cover,
    )),
    child: Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        nombre(),
        campoUsuario(),
        campoContrasena(),
        botonIniciar(context),
        botonRecuperar(context),
        botonSociales(),
      ],
    )),
  );
}

Widget nombre() {
  return const Text(
    'Iniciar Sesion',
    style: TextStyle(
        color: Colors.black, fontSize: 35.0, fontWeight: FontWeight.bold),
  );
}

Widget campoUsuario() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
    child: const TextField(
      decoration: InputDecoration(
        hintText: 'Usuario',
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget campoContrasena() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
    child: const TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Contraseña',
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget botonIniciar(BuildContext context) {
  return ElevatedButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ProfilePage()));
      },
      child: const Text(
        'Ingresar',
        style: TextStyle(fontSize: 25, color: Colors.black),
      ));
}

Widget botonRecuperar(BuildContext context) {
  return OutlinedButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Recuperar()));
      },
      child: const Text(
        'Recuperar Contraseña',
        style: TextStyle(fontSize: 25, color: Colors.black),
      ));
}

Widget botonSociales() {
  return Container(
    child: Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        OutlinedButton(
            onPressed: () {},
            child: const Text(
              'Inicar con Facebook',
              style: TextStyle(fontSize: 25, color: Colors.black),
            )),
        OutlinedButton(
            onPressed: () {},
            child: const Text(
              'Iniciar con Google',
              style: TextStyle(fontSize: 25, color: Colors.black),
            ))
      ],
    )),
  );
}