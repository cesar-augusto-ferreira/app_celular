import 'package:app_ciclo_cell/view/tela_cadastro.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaNuvem extends StatefulWidget {
  const TelaNuvem({Key? key}) : super(key: key);

  @override
  State<TelaNuvem> createState() => _TelaNuvemState();
}

class _TelaNuvemState extends State<TelaNuvem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 70),
        child: Center(
          child: Column(
            children: [
              Texto(label: 'Salvar com segurança! ', tamFonte: 20),
              const SizedBox(height: 20),
              Texto(
                label: ' Digite seu e-mail abaixo: \n',
                      tamFonte: 20,
              ),
              CampoTexto(label: 'e-mail nuvem',hintLabel: 'Digite seu'),
              const SizedBox(height: 25),
              Image.asset(
                'lib/images/nuvem.png',
                height: 150,  
                              
              ),
              const SizedBox(height: 25),
             
              Row(
                children: [
                  SizedBox(width:20),
                  Botao(corBotao: Colors.white, nomeBotao: 'Comprar'),
                  SizedBox(width:60),
                  Botao(corBotao: Colors.white, nomeBotao: 'Salvar'),
                ],
              ),                         
            ],
          ),
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
          color: Colors.black,
        ),
        prefixIcon: iconepref == null ? null : Icon(
          iconepref, color: Colors.white,
        ),
        suffixIcon: iconesuf == null ? null : Icon(
          iconesuf , color: Colors.white,
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
    );
    
  }
}
     
  
 
 