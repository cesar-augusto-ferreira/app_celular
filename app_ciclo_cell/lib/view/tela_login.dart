import 'package:app_ciclo_cell/view/tela_recuperar_senha.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({Key? key}) : super(key: key);

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  @override
  Widget build(BuildContext context) {return Scaffold(

      backgroundColor:const Color.fromRGBO(68, 56, 71, 1),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  'lib/images/Logo_CicloCell.png',
                  height: 180,
                ),
                const SizedBox(height: 45,),
                const CampoTexto(label: 'CPF', hintLabel: 'Digite seu ',iconepref: Icons.person_outline,),
                const SizedBox(height: 35),
                const CampoTexto(label: 'Senha', hintLabel: 'Digite sua ',
                 iconepref: Icons.vpn_key, iconesuf: Icons.visibility_off_outlined,),
                 const SizedBox(height: 25),
                 Text(
                  'Recuperar senha',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.start,
                  ),
                  const SizedBox(height: 40),
                  Row(
                    children: [
                      const SizedBox(width: 25),
                      Botao(corBotao: Colors.grey.shade200, nomeBotao: 'Login'),
                      const SizedBox(width: 50),
                      Botao(corBotao: Colors.grey.shade200, nomeBotao:'Cadastrar'),
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
    return TextField(
      decoration: InputDecoration(
        floatingLabelAlignment: FloatingLabelAlignment.center,
        labelText: label,
        hintText: '$hintLabel $label',
        prefixIcon: iconepref == null ? null : Icon(
          iconepref, color: Colors.black,
        ),
        suffixIcon: iconesuf == null ? null : Icon(
          iconesuf , color: Colors.black,
        ),
        fillColor: Colors.grey.shade200,
        filled: true,
        labelStyle: GoogleFonts.roboto(
          fontSize: 25,
          color: Colors.black,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
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
    
