
import 'package:app_ciclo_cell/view/tela_principal.dart';
import 'package:flutter/material.dart';

class TelaQuemSomos extends StatefulWidget {
  const TelaQuemSomos({Key? key}) : super(key: key);

  @override
  State<TelaQuemSomos> createState() => _TelaQuemSomosState();
}

class _TelaQuemSomosState extends State<TelaQuemSomos> {
  var cidade = TextEditingController();
  var endereco = TextEditingController();
  var complemento = TextEditingController();
  var celular = TextEditingController();

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

       body: SingleChildScrollView(
        child: Padding(
          padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Center(
            child: Column(
              children: [
                const Texto(label: 'Sobre', tamFonte: 25),
                const SizedBox(height: 25),
                const Texto(label: 'Somos otimizadores de desempenho para aparelhos com sistema oparecional Android.\n'
                  'O tema escolhido foi um aplicativo que melhora o desempenho de smartphonese outros aparelhos com sistema android.\n'
                  'A ferramenta desenvolvida busca otimizar o desempenho de aparelhos seminovos. Atravez de um '
                  'aplicativo leve, com poucos cliques e também pode ser feito um checkup da vida util da bateria. ',
                   tamFonte: 18,
                ),
                const SizedBox(height: 30),
                const Texto(label: 'Desenvolvedores:', tamFonte: 25),
                const SizedBox(height: 30),
                Image.asset(
                  'lib/images/20210420_151839.jpg',
                  height: 200,
                ),
                const SizedBox(height: 5),
                const Texto(label: 'César Augusto Ferreira', tamFonte: 20),
                const SizedBox(height: 40),
                Image.asset(
                  'lib/images/Foto-Atual.jpg',
                  height: 200,
                ),
                const SizedBox(height: 5),
                const Texto(label: 'Deusdedith Bastos Souza Junior', tamFonte: 20),
                const SizedBox(height: 50),
                const Botao(corBotao: Colors.white, nomeBotao:'Home', acaoBotao: TelaPrincipal(),),
                 
                const SizedBox(height: 30),
                 Row(
                  // ignore: prefer_const_literals_to_create_immutables
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



