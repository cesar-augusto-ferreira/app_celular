import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      backgroundColor: Color.fromRGBO(68, 56, 71, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Center(
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'lib/images/reciclagem.png',
                      width: 80,
                      fit: BoxFit.fill,
                    ),
                    Text(
                      'Tempo da bateria',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                      ),
                  ],
                ),
                const SizedBox(height: 35),
                Image.asset(
                  'lib/images/dolar.png',
                  width: 80,
                  fit: BoxFit.fill,
                ),
                  const SizedBox(height: 35),
                Image.asset(
                  'lib/images/camera.png',
                  width: 80,
                  fit: BoxFit.fill,
                ),
              ],

            ),
          ),

        ),
      ),
    );
    
  }
}