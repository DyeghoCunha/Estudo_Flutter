import 'package:flutter/material.dart';

class DadosCadastrais extends StatefulWidget {
  const DadosCadastrais({super.key});

  @override
  State<DadosCadastrais> createState() => _DadosCadastraisState();
}

class _DadosCadastraisState extends State<DadosCadastrais> {
  TextEditingController nomeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            shape: const BeveledRectangleBorder(
              borderRadius: BorderRadius.only(
                // bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(150),
              ),
            ),
            title: const Text("Dados Cadastrais")),
        body: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/images/fundo3.png"),
              fit: BoxFit.cover,
            )),
            child: SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 82, horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 30,),
                    TextField(
                      controller: nomeController,
                      decoration: InputDecoration(
                          labelText: "CNPJ",
                          border: const OutlineInputBorder(),
                          hintText: "Digite o CNPJ da Empresa",
                          hintStyle:
                              TextStyle(color: Theme.of(context).colorScheme.primary.withOpacity(0.4))),
                    ),
                    const SizedBox(height: 10,),
                    TextField(
                      controller: nomeController,
                      decoration: InputDecoration(
                          labelText: "Nome",
                          border: const OutlineInputBorder(),
                          hintText: "Digite o Nome da Empresa",
                          hintStyle:
                          TextStyle(color: Theme.of(context).colorScheme.primary.withOpacity(0.4))),
                    ),
                    const SizedBox(height: 10,),
                    TextField(
                      controller: nomeController,
                      decoration: InputDecoration(
                          labelText: "Rua",
                          border: const OutlineInputBorder(),
                          hintText: "Digite Rua ",
                          hintStyle:
                          TextStyle(color: Theme.of(context).colorScheme.primary.withOpacity(0.4))),
                    ),
                    const SizedBox(height: 10,),
                    TextField(
                      controller: nomeController,
                      decoration: InputDecoration(
                          labelText: "Número",
                          border: const OutlineInputBorder(),
                          hintText: "Digite o numero",
                          hintStyle:
                          TextStyle(color: Theme.of(context).colorScheme.primary.withOpacity(0.4))),
                    ),
                    const SizedBox(height: 10,),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Salvar"),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
