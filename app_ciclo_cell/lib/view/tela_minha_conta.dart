
import 'package:app_ciclo_cell/view/tela_principal.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaMinhaConta extends StatefulWidget {
  const TelaMinhaConta({Key? key}) : super(key: key);

  @override
  State<TelaMinhaConta> createState() => _TelaMinhaContaState();
}

class _TelaMinhaContaState extends State<TelaMinhaConta> {
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
            const Texto(label: 'Sobre', tamFonte: 18),
            const SizedBox(height: 10,),
            const Texto(label: 'Minha conta', tamFonte: 18),
            const SizedBox(height: 10,),
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
          padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Center(
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
              Container(
                padding: const EdgeInsets.all(2),
                color: Colors.white,
                child: Image.asset(
                  'lib/images/homem.png',
                  width: 150,
                ),
              ),
                const SizedBox(height: 20),
                const Texto(label: 'Nome: Sergio', tamFonte: 18),
                const SizedBox(height: 15),
                const Texto(label: 'Email: sergio@hotmail.com ', tamFonte: 18),
                const SizedBox(height: 15),
                const Texto(label: 'CPF: 12345678910', tamFonte: 18),
                const SizedBox(height: 15),
                const Texto(label: 'Rg: 123456789 ', tamFonte: 18),
                const SizedBox(height: 15),
                const Texto(label: 'Endereço: rua 22 nº: 25', tamFonte: 18),
                const SizedBox(height: 15),
                const Texto(label: 'Cidade: Ribeirão Preto', tamFonte: 18),
                const SizedBox(height: 15),
                const Texto(label: 'Celular: (16)9999-2222', tamFonte: 18),
                const SizedBox(height: 40),
                const Texto(label: 'Conta ativa', tamFonte: 16),
                const SizedBox(height: 40),  
                const Botao(corBotao: Colors.white, nomeBotao: 'Voltar', acaoBotao: TelaPrincipal()),
                const SizedBox(height: 25),
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