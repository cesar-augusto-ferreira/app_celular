
import 'package:app_ciclo_cell/view/tela_cadastro.dart';
import 'package:app_ciclo_cell/view/tela_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaRecuperarSenha2 extends StatefulWidget {
  const TelaRecuperarSenha2({Key? key}) : super(key: key);

  @override
  State<TelaRecuperarSenha2> createState() => _TelaRecuperarSenha2State();
}

class _TelaRecuperarSenha2State extends State<TelaRecuperarSenha2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // menu lateral
      endDrawer: Drawer(
        backgroundColor: Color.fromRGBO(68, 56, 71, 1),
        width: 250,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Sergio'), 
              accountEmail: Text('sergio@hotmail.com'),
              currentAccountPicture: Image.asset('lib/images/homem.png'),
            ),
            const SizedBox(height: 10,),
            Texto(label: 'Aumentar a performace', tamFonte: 18),
            const SizedBox(height: 10,),
            Texto(label: 'Tempo da bateria', tamFonte: 18),
            const SizedBox(height: 10,),
            Texto(label: 'Avaliar o aparelho', tamFonte: 18),
            const SizedBox(height: 10,),
            Texto(label: 'Backup de arquivos', tamFonte: 18),
            const SizedBox(height: 10,),
            Texto(label: 'Central de ajuda', tamFonte: 18),
            const SizedBox(height: 40,),
            Texto(label: 'Quem somos', tamFonte: 18),
            const SizedBox(height: 10,),
            Texto(label: 'Minha conta', tamFonte: 18),
            const SizedBox(height: 10,),
            Texto(label: 'Compra segura', tamFonte: 18),
            const SizedBox(height: 10,),
            Texto(label: 'Sair', tamFonte: 18),
          ],
        ),
      ),
        //appbar
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
      backgroundColor: const Color.fromRGBO(68, 56, 71, 1),

          //corpo da página
      body: SingleChildScrollView(
        child: Padding(
          padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 90),
          child: Center(
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Texto(label: 'Recuperaçao de senha', tamFonte: 25),
                const SizedBox(height: 20),
                const Texto(label: 'Sua senha foi enviada para seu', tamFonte: 18),
                const SizedBox(height: 50),
                Image.asset(
                  'lib/images/ok.png',
                ),
                const SizedBox(height: 50),
                const Texto(label: 'Obrigado', tamFonte: 16),
                const SizedBox(height: 40),  
                const Botao(corBotao: Colors.green, nomeBotao: 'Concluir', acaoBotao: TelaLogin()),
                const SizedBox(height: 130),
                Row(
                  children: [
                    const SizedBox(width: 250),
                    const Texto(label: 'CicloCell', tamFonte: 16),
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


class CampoCadastro extends StatelessWidget {
  final String label;
  final String? hintLabel;
  final IconData? iconepref;
  final IconData? iconesuf;

  const CampoCadastro({Key? key, required this.label, this.hintLabel, this.iconepref, this.iconesuf, }) : super(key: key);

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


class Texto extends StatelessWidget {
  final String label;
  final dynamic tamFonte;
  final dynamic? alinhamento;

  const Texto({Key? key, required this.label, required this.tamFonte, this.alinhamento}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      textAlign: alinhamento,
      style: TextStyle(
        color: Colors.white,
        fontSize: tamFonte,
      ),
    );   
  }

}


class Botao extends StatelessWidget {
  final Color corBotao;
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