
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaRecuperarSenha extends StatefulWidget {
  const TelaRecuperarSenha({Key? key}) : super(key: key);

  @override
  State<TelaRecuperarSenha> createState() => _TelaRecuperarSenhaState();
}

class _TelaRecuperarSenhaState extends State<TelaRecuperarSenha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(68, 56, 71, 1),

       drawer: Drawer(
        width: 200,
      ),

      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'CicloCell',
          style: TextStyle(
            fontSize: 35,
            color: Color.fromARGB(255, 15, 234, 22),
          ),
          ),
      ),

    );
      
  }
}