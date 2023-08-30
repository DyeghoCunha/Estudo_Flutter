import 'package:flutter/material.dart';
import 'package:simplesnacional_teste_dio/repositories/linguagens_repository.dart';
import 'package:simplesnacional_teste_dio/repositories/nivel_repository.dart';

class DadosCadastrais extends StatefulWidget {
  const DadosCadastrais({super.key});

  @override
  State<DadosCadastrais> createState() => _DadosCadastraisState();
}

class _DadosCadastraisState extends State<DadosCadastrais> {
  TextEditingController nomeController = TextEditingController();
  TextEditingController cnpjController = TextEditingController();
  TextEditingController ruaController = TextEditingController();
  TextEditingController numeroController = TextEditingController();
  TextEditingController dataAberturaController = TextEditingController();
  DateTime? dataAbertura;
  var nivelRepository = NivelRepository();
  var linguagensRepository = LinguagensRepository();
  var niveis = [];
  var linguagensSelecionadas = [];
  var nivelSelecionado = "";
  var linguagens = [];
  double salarioEscolhido = 0;
  int tempoExperiencia = 1;

  @override
  void initState() {
    niveis = nivelRepository.retornaNiveis();
    linguagens = linguagensRepository.retornaLinguagens();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text("Dados Cadastrais")),
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/images/fundo3.png"),
            fit: BoxFit.cover,
          )),
          child: SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      // TextField(
                      //   controller: cnpjController,
                      //   decoration: InputDecoration(
                      //       labelText: "CNPJ",
                      //       border: const OutlineInputBorder(),
                      //       hintText: "Digite o CNPJ da Empresa",
                      //       hintStyle:
                      //           TextStyle(color: Theme.of(context).colorScheme.primary.withOpacity(0.4))),
                      // ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: nomeController,
                        decoration: InputDecoration(
                            labelText: "Nome",
                            border: const OutlineInputBorder(),
                            hintText: "Digite o Nome da Empresa",
                            hintStyle:
                                TextStyle(color: Theme.of(context).colorScheme.primary.withOpacity(0.4))),
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      TextField(
                        controller: ruaController,
                        decoration: InputDecoration(
                          labelText: "Rua",
                          border: const OutlineInputBorder(),
                          hintText: "Digite Rua ",
                          hintStyle: TextStyle(
                            color: Theme.of(context).colorScheme.primary.withOpacity(0.4),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: numeroController,
                        decoration: InputDecoration(
                          labelText: "Número",
                          border: const OutlineInputBorder(),
                          hintText: "Digite o numero",
                          hintStyle: TextStyle(
                            color: Theme.of(context).colorScheme.primary.withOpacity(0.4),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        readOnly: true,
                        controller: dataAberturaController,
                        onTap: () async {
                          var data = await showDatePicker(
                            context: context,
                            initialDate: DateTime(2023, 1, 1),
                            firstDate: DateTime(1980, 5, 20),
                            lastDate: DateTime(2023, 10, 23),
                          );
                          if (data != null) {
                            dataAberturaController.text = data.toString();
                            dataAbertura = data;
                          }
                        },
                        decoration: InputDecoration(
                          labelText: "Data de Abertura",
                          border: const OutlineInputBorder(),
                          hintText: "Digite o numero",
                          hintStyle: TextStyle(
                            color: Theme.of(context).colorScheme.primary.withOpacity(0.4),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            const Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Nível de Experiência"),
                            ),
                            Column(
                              children: niveis
                                  .map(
                                    (nivel) => RadioListTile(
                                      title: Text(nivel.toString()),
                                      selected: nivelSelecionado == nivel,
                                      value: nivel,
                                      groupValue: nivelSelecionado,
                                      onChanged: (value) {
                                        setState(() {
                                          nivelSelecionado = value.toString();
                                        });
                                      },
                                    ),
                                  )
                                  .toList(),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            const Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text("Linguagens preferidas"),
                            ),
                            Column(
                              children: linguagens
                                  .map(
                                    (linguagem) => CheckboxListTile(
                                      title: Text(linguagem),
                                      value: linguagensSelecionadas.contains(linguagem),
                                      onChanged: (value) {
                                        if (value!) {
                                          setState(() {
                                            linguagensSelecionadas.add(linguagem);
                                          });
                                        } else {
                                          setState(() {
                                            linguagensSelecionadas.remove(linguagem);
                                          });
                                        }
                                      },
                                    ),
                                  )
                                  .toList(),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            const Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: const Text("Tempo de experiência"),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: DropdownButton(
                                style: const TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                                value: tempoExperiencia,
                                icon: const Icon(
                                  Icons.select_all,
                                  color: Colors.green,
                                ),
                                isExpanded: true,
                                items: const [
                                  DropdownMenuItem(
                                    child: Text("Anexo I"),
                                    value: 1,
                                  ),
                                  DropdownMenuItem(
                                    child: const Text("Anexo II"),
                                    value: 2,
                                  ),
                                  DropdownMenuItem(
                                    child: const Text("Anexo III"),
                                    value: 3,
                                  ),
                                  DropdownMenuItem(
                                    child: const Text("Anexo IV"),
                                    value: 4,
                                  ),
                                  DropdownMenuItem(
                                    child: const Text("Anexo V"),
                                    value: 5,
                                  ),
                                ],
                                onChanged: (value) {
                                  setState(() {
                                    tempoExperiencia = int.parse(value.toString());
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text("Pretenção Salarial: R\$ ${salarioEscolhido.round().toString()}"),
                            ),
                            Slider(
                              thumbColor: Colors.blue,
                              activeColor: Colors.green,
                              inactiveColor: Colors.yellow,
                              label: "Pretenção Salarial",
                              min: 0,
                              max: 10000,
                              value: salarioEscolhido,
                              onChanged: (value) {
                                setState(() {
                                  salarioEscolhido = value;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("Salvar"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
