import 'package:flutter/material.dart';
import 'package:primeiro_app_dio_2023/pages/dados_cadastrais.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Simples Nacional"),
        ),
        drawer: Drawer(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Container(
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage
              ("assets/images/fundoDrawer.png"),fit: BoxFit.cover)),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 10),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(
                    width: double.infinity,
                    child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(context, MaterialPageRoute(builder: (ctx) => DadosCadastrais()));
                        },
                        child: Text("Dados Cadastrais"))),
                SizedBox(
                  height: 10,
                ),
                Text("Termo de uso e privacidade"),
                SizedBox(
                  height: 10,
                ),
                Text("Configurações"),
                SizedBox(
                  height: 10,
                ),
                Divider(),
                ElevatedButton(onPressed: () {}, child: Text("LogOff"))
              ]),
            ),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/images/fundo4.png",
                  ),
                  fit: BoxFit.cover)),
        ),
      ),
    );
  }
}
