
import 'package:app_ciclo_cell/view/tela_cadastro2.dart';
import 'package:app_ciclo_cell/view/tela_login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaCadastro extends StatefulWidget {
  const TelaCadastro({Key? key}) : super(key: key);

  @override
  State<TelaCadastro> createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
  var nome = TextEditingController();
  var rg = TextEditingController();
  var cpf = TextEditingController();
  var email = TextEditingController();
  var confEmail = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        // menu lateral
      endDrawer: Drawer(
        backgroundColor: const Color.fromRGBO(68, 56, 71, 1),
        width: 250,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text('Sergio'), 
              accountEmail: const Text('sergio@hotmail.com'),
              currentAccountPicture: Image.asset('lib/images/homem.png'),
            ),
            const SizedBox(height: 10,),
            const Texto(label: 'Aumentar a performace', tamFonte: 18),
            const SizedBox(height: 10,),
            const Texto(label: 'Tempo da bateria', tamFonte: 18),
            const SizedBox(height: 10,),
            const Texto(label: 'Avaliar o aparelho', tamFonte: 18),
            const SizedBox(height: 10,),
            const Texto(label: 'Backup de arquivos', tamFonte: 18),
            const SizedBox(height: 10,),
            const Texto(label: 'Central de ajuda', tamFonte: 18),
            const SizedBox(height: 40,),
            const Texto(label: 'Quem somos', tamFonte: 18),
            const SizedBox(height: 10,),
            const Texto(label: 'Minha conta', tamFonte: 18),
            const SizedBox(height: 10,),
            const Texto(label: 'Compra segura', tamFonte: 18),
            const SizedBox(height: 10,),
            const Texto(label: 'Sair', tamFonte: 18),
          ],
        ),
      ),

          // Appbar
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
          padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Center(
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Texto(label: 'Cadastro', tamFonte: 25),
                const SizedBox(height: 10),
                const Texto(label: 'Preencha os campos abaixo.', tamFonte: 18),
                const SizedBox(height: 10),
                const Texto(label: 'Página 1/2', tamFonte: 16),
                const SizedBox(height: 10),
                const CampoCadastro(label: 'Nome*', hintLabel: 'Digite o seu ',iconepref: Icons.person_outline,), 
                const SizedBox(height: 20,),
                const CampoCadastro(label: 'RG*', hintLabel: 'Digite o seu', iconepref: Icons.document_scanner_outlined),
                const SizedBox(height: 20,),
                const CampoCadastro(label: 'CPF*', hintLabel: 'Digite o seu ', iconepref: Icons.document_scanner_outlined), 
                const SizedBox(height: 20,),
                const CampoCadastro(label: 'E-mail*', hintLabel: 'Digite o seu ', iconepref: Icons.email_outlined,),
                const SizedBox(height: 20),
                const CampoCadastro(label: 'Confirme o e-mail*', iconepref: Icons.email_outlined,), 
                const SizedBox(height: 45),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Botao(corBotao: Colors.red, nomeBotao: 'Cancelar', acaoBotao: TelaLogin()),
                    const SizedBox(width: 80),
                    const Botao(corBotao: Colors.green, nomeBotao: 'Próximo', acaoBotao: TelaCadastro2()),
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


class CampoCadastro extends StatelessWidget {
  final String label;
  final String? hintLabel;
  final IconData? iconepref;
  final IconData? iconesuf;

  const CampoCadastro({Key? key, required this.label, this.hintLabel, this.iconepref, this.iconesuf}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        floatingLabelAlignment: FloatingLabelAlignment.center,
        labelText: label,
        hintText: '$hintLabel $label',
        hintStyle: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
        prefixIcon: iconepref == null ? null : Icon(
          iconepref, color: Colors.white,
        ),
        suffixIcon: iconesuf == null ? null : Icon(
          iconesuf , color: Colors.white,
        ),
        labelStyle: GoogleFonts.roboto(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
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