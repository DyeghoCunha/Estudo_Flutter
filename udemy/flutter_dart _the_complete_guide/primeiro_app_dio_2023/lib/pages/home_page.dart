import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../service/gerador_numero_aleatorio.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var numeroGerado = 0;
  var quantidadeCliques = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Meu App",
          //  style: GoogleFonts.pacifico(),
        ),
      ),
      body: Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: Colors.cyan,
                  child: Text(
                    "Ações do usuário",
                    style: GoogleFonts.acme(),
                  ),
                ),
              ),
              SizedBox(
                width: 100,
                height: 100,
                child: Container(
                  color: Colors.orange,
                  child: Text(
                    "Foi clicado $quantidadeCliques vezes",
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                color: Colors.indigo,
                child: Text(
                  "O numero gerado foi: $numeroGerado",
                  style: GoogleFonts.acme(),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.grey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          alignment: Alignment.center,
                          color: Colors.red,
                          child: Text("10"),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          alignment: Alignment.center,
                          color: Colors.blue,
                          child: Text("Dyegho Cunha"),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          alignment: Alignment.center,
                          color: Colors.green,
                          child: Text("30"),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            quantidadeCliques = quantidadeCliques + 1;
            numeroGerado = GeradorNumeroAleatorioService.gerarNumeroAleatorio(10);
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
