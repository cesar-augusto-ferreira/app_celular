import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

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