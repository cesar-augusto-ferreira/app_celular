// ignore_for_file: prefer_const_constructors

import 'package:app_ciclo_cell/view/tela_ajuda.dart';
import 'package:app_ciclo_cell/view/tela_anunciar2.dart';
import 'package:app_ciclo_cell/view/tela_anunciar3.dart';
import 'package:app_ciclo_cell/view/tela_avaliacao.dart';
import 'package:app_ciclo_cell/view/tela_bateria.dart';
import 'package:app_ciclo_cell/view/tela_cadastro.dart';

import 'package:app_ciclo_cell/view/tela_login.dart';
import 'package:app_ciclo_cell/view/tela_minha_conta.dart';
import 'package:app_ciclo_cell/view/tela_nuvem.dart';
import 'package:app_ciclo_cell/view/tela_nuvem2.dart';
import 'package:app_ciclo_cell/view/tela_performace.dart';
import 'package:app_ciclo_cell/view/tela_performance2.dart';
import 'package:app_ciclo_cell/view/tela_principal.dart';
import 'package:app_ciclo_cell/view/tela_quem_somos.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'CicloCell',
      home: TelaLogin(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
