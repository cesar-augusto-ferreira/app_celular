import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaCadastro extends StatefulWidget {
  const TelaCadastro({Key? key}) : super(key: key);

  @override
  State<TelaCadastro> createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

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

    
      body: const SingleChildScrollView(
        child: Padding(
          padding:EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Center(
            child: Column(
              children: [
                Texto(label: 'Cadastro', tamFonte: 25),
              ],
            ),
          ),
        ),
      ),

    );
    
  }
}




class CampoTextoC extends StatelessWidget {
  final String label;
  final String? hintLabel;
  final IconData? iconepref;
  final IconData? iconesuf;

  const CampoTextoC({Key? key, required this.label, this.hintLabel, this.iconepref, this.iconesuf}) : super(key: key);

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
        fillColor: Colors.white,
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