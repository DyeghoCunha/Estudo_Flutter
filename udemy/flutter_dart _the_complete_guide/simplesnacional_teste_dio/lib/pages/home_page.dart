import 'package:flutter/material.dart';
import 'package:simplesnacional_teste_dio/widgets/custom_drawer.dart';
import 'card_page.dart';
import 'Pagina2.dart';
import 'Pagina3.dart';
import 'dados_cadastrais.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController pageController = PageController(initialPage: 0);
  int posicaoPagina = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Simples Nacional"),
        ),
        drawer: CustomDrawer(),
        body: Column(
          children: [
            Expanded(
              child: PageView(
                controller: pageController,
                  onPageChanged: (value) {
                    setState(() {
                      posicaoPagina = value;
                    });
                  },
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                "assets/images/fundo4.png",
                              ),
                              fit: BoxFit.cover)),
                    ),
                    const CardPage(),
                    const Pagina2(),
                  ]),
            ),
            BottomNavigationBar(

              currentIndex: posicaoPagina,
              onTap: (value) {
                pageController.jumpToPage(value);
              },
              type: BottomNavigationBarType.fixed,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Pag1"),
                BottomNavigationBarItem(icon: Icon(Icons.pedal_bike_rounded), label: "Pag2"),
                BottomNavigationBarItem(icon: Icon(Icons.person), label: "Pag3"),
                BottomNavigationBarItem(icon: Icon(Icons.person), label: "Pag4"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
