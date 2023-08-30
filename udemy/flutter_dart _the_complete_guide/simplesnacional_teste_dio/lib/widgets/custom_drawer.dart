import 'package:flutter/material.dart';

import '../pages/dados_cadastrais.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
      ),
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/fundoDrawer.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                    barrierColor: Theme.of(context).colorScheme.primary.withOpacity(0.3),
                    barrierLabel: "Teste",
                    showDragHandle: true,
                    context: context,
                    backgroundColor: Colors.transparent,
                    builder: (BuildContext bc) {
                      return Container(
                        width: double.infinity,
                        height: 500,
                        decoration:const  BoxDecoration(image: DecorationImage(image: AssetImage
                          ("assets/images/fundo4.png"),fit: BoxFit.cover)),
                        child: const Column(children: [

                        ],),
                      );
                    },
                  );
                },
                child: UserAccountsDrawerHeader(
                  currentAccountPicture: Image.asset("assets/images/logo.png"),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey, // Cor da sombra
                        offset: Offset(4, 4), // Deslocamento para a sombra superior-esquerda
                        blurRadius: 4, // Raio do desfoque da sombra
                      ),
                      BoxShadow(
                        color: Colors.white, // Cor da sombra interna
                        offset: Offset(-4, -4), // Deslocamento para a sombra inferior-direita
                        blurRadius: 4, // Raio do desfoque da sombra
                      ),
                    ],
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                  accountName: const Text("Dyegho Cunha"),
                  accountEmail: const Text("email@email.com"),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        width: double.infinity,
                        child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (ctx) => const DadosCadastrais(),
                                ),
                              );
                            },
                            child: Row(
                              children: [
                                Icon(
                                  Icons.person,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Dados Cadastrais",
                                  style: TextStyle(
                                      color: Theme.of(context).colorScheme.primary,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ))),
                    DividerTheme(
                        data: DividerThemeData(
                          color: Theme.of(context).colorScheme.primary,
                          thickness: 1,
                        ),
                        child: const Divider()),
                    Row(
                      children: [
                        Icon(
                          Icons.file_copy,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Termo de uso e privacidade",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    DividerTheme(
                        data: DividerThemeData(
                          color: Theme.of(context).colorScheme.primary,
                          thickness: 1,
                        ),
                        child: const Divider()),
                    Row(
                      children: [
                        Icon(
                          Icons.settings,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Configurações",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    DividerTheme(
                        data: DividerThemeData(
                          color: Theme.of(context).colorScheme.primary,
                          thickness: 1,
                        ),
                        child: const Divider()),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("LogOff"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
