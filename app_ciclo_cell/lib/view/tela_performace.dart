import 'package:app_ciclo_cell/view/tela_cadastro.dart';
import 'package:app_ciclo_cell/view/tela_performance2.dart';
import 'package:flutter/material.dart';

class TelaPerformace extends StatefulWidget {
  const TelaPerformace({Key? key}) : super(key: key);

  @override
  State<TelaPerformace> createState() => _TelaPerformaceState();
}

class _TelaPerformaceState extends State<TelaPerformace> {
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
            const Texto(label: 'Sobre', tamFonte: 18),
            const SizedBox(height: 10,),
            const Texto(label: 'Minha conta', tamFonte: 18),
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
              Texto(label: 'Mais performance! ', tamFonte: 20),
              const SizedBox(height: 20),
              Texto(
                label: '   Essa função elimina os cokies, fecha os aplicativos em segundo plano'
                ' e sugere a remoção de aplicativos antigos, que não estão sendo utilizados.', tamFonte: 20
              ),
              const SizedBox(height: 30),
              Image.asset(
                'lib/images/forca.png',
                height: 150,                
              ),
              SizedBox(height:40),
              Botao(corBotao: Colors.white, nomeBotao: '+ Performance', acaoBotao: TelaPerformace2(),),


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
     
  
 
 