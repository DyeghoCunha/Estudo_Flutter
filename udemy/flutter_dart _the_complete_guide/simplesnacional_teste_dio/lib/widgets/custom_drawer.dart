import 'package:flutter/material.dart';
import 'package:simplesnacional_teste_dio/pages/login_page.dart';

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
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    barrierColor: Theme.of(context).colorScheme.primary.withOpacity(0.3),
                    barrierLabel: "Teste",
                    showDragHandle: true,
                    context: context,
                    backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.7),
                    builder: (BuildContext bc) {
                      return Wrap(
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage("assets/images/fundo4.png"), fit: BoxFit.cover)),
                                child: Column(
                                  children: [
                                    ListTile(
                                      title: Text("Camera"),
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      leading: Icon(Icons.camera_alt),
                                    ),
                                    ListTile(
                                      title: Text("Galeria"),
                                      leading: Icon(Icons.photo),
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
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
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          barrierColor: Theme.of(context).colorScheme.primary.withOpacity(0.3),
                          barrierLabel: "Teste",
                          showDragHandle: true,
                          context: context,
                          backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.7),
                          builder: (BuildContext bc) {
                            return Wrap(
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage("assets/images/fundo4.png"),
                                              fit: BoxFit.cover)),
                                      child: Column(
                                        children: [
                                          ListTile(
                                            title: Text("Camera"),
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            leading: Icon(Icons.camera_alt),
                                          ),
                                          ListTile(
                                            title: Text("Galeria"),
                                            leading: Icon(Icons.photo),
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            barrierColor: Theme.of(context).colorScheme.primary.withOpacity(0.3),
                            barrierLabel: "Teste",
                            showDragHandle: true,
                            context: context,
                            backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.7),
                            builder: (BuildContext bc) {
                              return Wrap(
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage("assets/images/fundo4.png"),
                                                fit: BoxFit.cover)),
                                        child: const SingleChildScrollView(
                                          child: Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text("""Termos de Uso e Privacidade

Bem-vindo ao nosso aplicativo de cálculos do Simples Nacional. Ao utilizar este aplicativo, você concorda com os seguintes termos e condições:

1. Uso Responsável: Este aplicativo destina-se apenas a fins informativos e não oferece aconselhamento financeiro ou jurídico. Os cálculos fornecidos são baseados em informações públicas e podem não refletir sua situação específica.

2. Coleta de Dados: Para melhorar sua experiência, podemos coletar informações anônimas sobre o uso do aplicativo. Isso nos ajuda a identificar áreas de melhoria e aprimorar nossos serviços.

3. Privacidade: Respeitamos sua privacidade. As informações coletadas são usadas apenas para fins internos e não serão compartilhadas com terceiros sem o seu consentimento.

4. Atualizações: Periodicamente, podemos atualizar o aplicativo para corrigir erros e adicionar recursos. Certifique-se de manter o aplicativo atualizado para obter o melhor desempenho.

5. Isenção de Responsabilidade: Não nos responsabilizamos por qualquer perda ou dano decorrente do uso deste aplicativo. Recomendamos que você verifique todas as informações antes de tomar decisões comerciais.

6. Alterações nos Termos: Reservamos o direito de modificar estes termos a qualquer momento. As alterações entrarão em vigor assim que forem publicadas no aplicativo.

7. Contato: Se você tiver alguma dúvida ou preocupação sobre estes termos, entre em contato conosco através do e-mail de suporte fornecido no aplicativo.

Agradecemos por escolher nosso aplicativo. Esperamos que ele seja útil em seus cálculos relacionados ao Simples Nacional.
 """),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: Row(
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
                      ),
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
              ElevatedButton.icon(
                icon: const Icon(Icons.exit_to_app),
                label: const Text("Sair"),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext ctx) {
                        return AlertDialog(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          title: Text(
                            "Simples Nacional",
                            style: TextStyle(color: Theme.of(context).colorScheme.primary),
                          ),
                          content: const Wrap(
                            children: [
                              Column(
                                children: [
                                  Text("Deseja Realmente sair do Aplicativo?"),
                                ],
                              ),
                            ],
                          ),
                          actions: [
                            IconButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const LoginPage(),
                                  ),
                                );
                              },
                              icon: const Icon(
                                Icons.check,
                                size: 20,
                                color: Colors.green,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(
                                Icons.not_interested,
                                size: 20,
                                color: Colors.red,
                              ),
                            ),
                          ],
                          actionsPadding: EdgeInsets.only(right: 20),
                          actionsOverflowButtonSpacing: 50,
                        );
                      });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
