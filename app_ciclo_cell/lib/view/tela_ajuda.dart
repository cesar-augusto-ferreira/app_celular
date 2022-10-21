import 'package:app_ciclo_cell/view/tela_avaliacao2.dart';
import 'package:app_ciclo_cell/view/tela_principal.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class TelaAjuda extends StatefulWidget {
  const TelaAjuda({Key? key}) : super(key: key);

  @override
  State<TelaAjuda> createState() => _TelaAjudaState();
}

class _TelaAjudaState extends State<TelaAjuda> {
  var cidade = TextEditingController();
  var endereco = TextEditingController();
  var complemento = TextEditingController();
  var celular = TextEditingController();

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
              accountName: const Text('Sergio'),
              accountEmail: const Text('sergio@hotmail.com'),
              currentAccountPicture: Image.asset('lib/images/homem.png'),
            ),
            const SizedBox(height: 10),
            const Texto(label: 'Aumentar a performace', tamFonte: 18),
            const SizedBox(height: 10),
            const Texto(label: 'Tempo da bateria', tamFonte: 18),
            const SizedBox(height: 10),
            const Texto(label: 'Avaliar o aparelho', tamFonte: 18),
            const SizedBox(height: 10),
            const Texto(label: 'Backup de arquivos', tamFonte: 18),
            const SizedBox(height: 10),
            const Texto(label: 'Central de ajuda', tamFonte: 18),
            const SizedBox(height: 40),
            const Texto(label: 'Sobre', tamFonte: 18),
            const SizedBox(height: 10),
            const Texto(label: 'Minha conta', tamFonte: 18),
            const SizedBox(height: 10),
            const Texto(label: 'Sair', tamFonte: 18),
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
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: Center(
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Texto(label: 'Central de ajuda?', tamFonte: 25),
                const SizedBox(height: 25),
                const Texto(label: 'Diga, em que posso ajudar?', tamFonte: 18),
                const SizedBox(height: 60),
                const CampoCadastroD(label: '*Dúvida', hintLabel: 'Digite a sua dúvida ', iconepref: Icons.mobile_friendly),
                const SizedBox(height: 150,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Botao(corBotao: Colors.white, nomeBotao: 'Voltar', acaoBotao: TelaPrincipal()),
                    const SizedBox(width: 80),
                    const Botao(corBotao: Colors.white, nomeBotao: 'Enviar', acaoBotao: CxDialogo()),
                  ],
                ),
                const SizedBox(height: 30),
                const Texto(label: '* Campos obrigatórios', tamFonte: 14),
                const SizedBox(height: 15),
                
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

class CampoCadastroD extends StatelessWidget {
  final String label;
  final String? hintLabel;
  final IconData? iconepref;
  final IconData? iconesuf;

  const CampoCadastroD({Key? key, required this.label, this.hintLabel, this.iconepref,this.iconesuf}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConstrainedBox(constraints: BoxConstraints(
          maxHeight: 200,
          maxWidth: 250,
        ),
        
        child: TextFormField(
          maxLines: 10,
          decoration: InputDecoration(
            //contentPadding: EdgeInsets.symmetric(horizontal: 50, vertical: 100),
            floatingLabelAlignment: FloatingLabelAlignment.start,
            labelText: label,
            hintText: '$hintLabel',
            hintStyle: TextStyle(
              color: Colors.black,
            ),
            prefixIcon: iconepref == null
                ? null
                : Icon(
                    iconepref,
                    color: Colors.white,
                  ),
            suffixIcon: iconesuf == null
                ? null
                : Icon(
                    iconesuf,
                    color: Colors.white,
                  ),
            fillColor: Colors.white,
            filled: true,
            labelStyle: GoogleFonts.roboto(
              fontSize: 25,
              color: Colors.black,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(1),
            ),
          ),
        ),
        ),
      ],
    );
  }
}

class Texto extends StatelessWidget {
  final String label;
  final dynamic tamFonte;

  const Texto({Key? key, required this.label, required this.tamFonte}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      textAlign: TextAlign.start,
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
      child: Text(
        nomeBotao,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.black,
        ),
      ),
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => acaoBotao,
            ));
      },
    );
  }
}


class CxDialogo extends StatefulWidget {

  const CxDialogo({Key? key,  }) : super(key: key);

  @override
  State<CxDialogo> createState() => _CxDialogoState();
}

class _CxDialogoState extends State<CxDialogo> {
    
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'Enviado',
        textAlign: TextAlign.center,
        ),
      content: Text(
        'Sua duvida foi enviada com sucesso!.'
        ' \n\n Obrogado.',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 18
        ),
      ),
      actions: [
        TextButton(onPressed: (){
          Navigator.of(context).pop(); 
        }, 
        child: Text('fechar'),
        ), 
      ],  
    );
    
  }
}
