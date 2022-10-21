// ignore_for_file: prefer_const_constructors

import 'package:app_ciclo_cell/view/tela_ajuda.dart';
import 'package:app_ciclo_cell/view/tela_anunciar.dart';
import 'package:app_ciclo_cell/view/tela_avaliacao.dart';
import 'package:app_ciclo_cell/view/tela_cadastro.dart';

import 'package:app_ciclo_cell/view/tela_login.dart';
import 'package:app_ciclo_cell/view/tela_minha_conta.dart';
import 'package:app_ciclo_cell/view/tela_performace.dart';
import 'package:app_ciclo_cell/view/tela_principal.dart';
import 'package:app_ciclo_cell/view/tela_quem_somos.dart';
import 'package:app_ciclo_cell/view/tela_recuperar_senha.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'CicloCell',
      home: TelaAjuda(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
