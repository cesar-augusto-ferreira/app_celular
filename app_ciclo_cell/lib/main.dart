// ignore_for_file: prefer_const_constructors

import 'package:app_ciclo_cell/tela_performance3.dart';
import 'package:app_ciclo_cell/view/tela_anunciar.dart';
import 'package:app_ciclo_cell/view/tela_bateria.dart';
import 'package:app_ciclo_cell/view/tela_bateria2.dart';
import 'package:app_ciclo_cell/view/tela_cadastro.dart';
import 'package:app_ciclo_cell/view/tela_login.dart';
import 'package:app_ciclo_cell/view/tela_nuvem.dart';
import 'package:app_ciclo_cell/view/tela_nuvem2.dart';
import 'package:app_ciclo_cell/view/tela_performace.dart';
import 'package:app_ciclo_cell/view/tela_performance2.dart';
import 'package:app_ciclo_cell/view/tela_principal.dart';
import 'package:app_ciclo_cell/view/tela_recuperar_senha.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'CicloCell',
      home: TelaNuvem (),
      debugShowCheckedModeBanner: false,
    ),
  );
}
