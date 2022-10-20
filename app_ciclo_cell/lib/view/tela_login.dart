// ignore_for_file: prefer_const_constructors, sort_child_properties_last


import 'package:app_ciclo_cell/view/tela_cadastro.dart';
import 'package:app_ciclo_cell/view/tela_principal.dart';
import 'package:app_ciclo_cell/view/tela_recuperar_senha.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({Key? key}) : super(key: key);

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  var email = TextEditingController();
  var senha = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromRGBO(68, 56, 71, 1),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  'lib/images/Logo_CicloCell.png',
                  height: 180,
                ),
                const SizedBox(height: 60,),
                const CampoTexto(label: 'Email', hintLabel: 'Digite seu ',
                  iconepref: Icons.person_outline,
                ),
                const SizedBox(height: 45),
                const CampoTexto(label: 'Senha', hintLabel: 'Digite sua ',
                  iconepref: Icons.vpn_key, iconesuf: Icons.visibility_off_outlined,
                ),
                const SizedBox(height: 40),
                TextButton(
                  onPressed:(){},
                  child: Text(
                    'Recuperar senha',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 25,
                      decoration: TextDecoration.underline,
                    ),
                    ), 
                  ),
                  const SizedBox(height: 80),
                  Row(
                    children: [
                      const SizedBox(width: 25),
                      Botao(corBotao: Colors.grey.shade200, nomeBotao: 'Login',acaoBotao: TelaPrincipal(),),
                      const SizedBox(width: 50),
                      Botao(corBotao: Colors.grey.shade200, nomeBotao:'Cadastrar',acaoBotao: TelaCadastro(),),
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

class CampoTexto extends StatelessWidget {
  final String label;
  final String? hintLabel;
  final IconData? iconepref;
  final IconData? iconesuf;

  const CampoTexto({Key? key, required this.label, this.hintLabel, this.iconepref, this.iconesuf}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      decoration: InputDecoration(
        floatingLabelAlignment: FloatingLabelAlignment.center,
        labelText: label,
        hintText: '$hintLabel $label',
        hintStyle: TextStyle(
          color: Colors.white,
        ),
        prefixIcon: iconepref == null ? null : Icon(
          iconepref, color: Colors.white,
        ),
        suffixIcon: iconesuf == null ? null : Icon(
          iconesuf , color: Colors.white,
        ),
        labelStyle: GoogleFonts.roboto(
          fontSize: 25,
          color: Colors.white,
        ),
      ),
    );
    
  }
}

class Botao extends StatelessWidget {
  final dynamic corBotao;
  final String nomeBotao;
  final dynamic? acaoBotao;

  const Botao({Key? key, required this.corBotao, required this.nomeBotao, this.acaoBotao}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(120, 50),
        primary: corBotao,
      ), 
      child:  Text(
        nomeBotao,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.black,
        ),
      ),

      onPressed: () { 
        Navigator.push(
          context, MaterialPageRoute(
            builder: (
              BuildContext context
            ) 
            => acaoBotao, 
          )
        );
      },
    );
  }
}
    
