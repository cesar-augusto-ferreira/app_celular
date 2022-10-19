// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:convert';

import 'package:app_ciclo_cell/view/tela_login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      
      drawer: Drawer(
        backgroundColor: Color.fromRGBO(68, 56, 71, 30),
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal:0, vertical: 0),
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.black, shape: BoxShape.circle, image: DecorationImage(image: image) ),
              child: Text(
                'olá Rodrigo',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
              
            ),
          ],
        ),
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

      backgroundColor: Color.fromRGBO(68, 56, 71, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'lib/images/forca.png',
                      width: 80,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(width: 16),
                    Text(
                          'Aumentar \n performace',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                  ],
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'lib/images/reciclagem.png',
                      width: 60,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(width: 20),
                    Text(
                      'Tempo \n da bateria',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'lib/images/dolar.png',
                      width: 60,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(width: 20),
                    Text(
                      'Avaliar \n aparelho',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                  const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'lib/images/camera.png',
                      width: 80,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(width: 16),
                    Text(
                          'Anunciar \n aparelho',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                  ],
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'lib/images/nuvem.png',
                      width: 85,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(width: 22),
                    Text(
                      'Backup \n da arquivos',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'lib/images/bate-papo.png',
                      width: 85,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(width: 20),
                    Text(
                      'Central \n de ajuda',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],

            ),
          ),

        ),
      ),
    );
    
  }
}