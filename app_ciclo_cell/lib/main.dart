
// ignore_for_file: prefer_const_constructors


import 'package:app_ciclo_cell/view/tela_login.dart';
import 'package:app_ciclo_cell/view/tela_principal.dart';
import 'package:app_ciclo_cell/view/tela_recuperar_senha.dart';
import 'package:flutter/material.dart';

void main() {
  
  runApp(
    MaterialApp(
      title: 'CicloCell',
      home: TelaPrincipal(),
      debugShowCheckedModeBanner: false,
    ),
    );
}