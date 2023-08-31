import 'package:flutter/material.dart';
import 'package:simplesnacional_teste_dio/widgets/cardModelo.dart';

import '../model/card_detail.dart';
import 'card_detail_page.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  CardDetail cardDetail = CardDetail(
    id: "1",
    title: "Simule sua alíquota",
    url: "assets/images/logo.png",
    text:
        "Calcule seus impostos com o Simples Nacional!\n\nO Simples Nacional é um regime tributário simplificado no Brasil, ideal para pequenas e médias empresas. Ele unifica os impostos federais, estaduais e municipais em uma única guia de pagamento.\n\nComo funciona:\n\n1. Escolha o anexo adequado à sua atividade econômica.\n2. Com base no seu faturamento mensal, aplique a alíquota correspondente para calcular os impostos a pagar.\n3. Pague uma única guia de impostos, facilitando a gestão financeira.\n\nLembre-se: as alíquotas variam de acordo com a faixa de faturamento e a atividade da empresa. O Simples Nacional é uma excelente opção para simplificar sua vida empresarial e reduzir a carga tributária.",
  );
   List<CardDetail> listCard =[CardDetail(
  id: "1",
  title: "Simule sua alíquota",
  url: "assets/images/logo.png",
  text:
  "Calcule seus impostos com o Simples Nacional!\n\nO Simples Nacional é um regime tributário simplificado no Brasil, ideal para pequenas e médias empresas. Ele unifica os impostos federais, estaduais e municipais em uma única guia de pagamento.\n\nComo funciona:\n\n1. Escolha o anexo adequado à sua atividade econômica.\n2. Com base no seu faturamento mensal, aplique a alíquota correspondente para calcular os impostos a pagar.\n3. Pague uma única guia de impostos, facilitando a gestão financeira.\n\nLembre-se: as alíquotas variam de acordo com a faixa de faturamento e a atividade da empresa. O Simples Nacional é uma excelente opção para simplificar sua vida empresarial e reduzir a carga tributária.",
  ),CardDetail(
  id: "2",
  title: "Simule sua alíquota",
  url: "assets/images/logo.png",
  text:
  "Calcule seus impostos com o Simples Nacional!\n\nO Simples Nacional é um regime tributário simplificado no Brasil, ideal para pequenas e médias empresas. Ele unifica os impostos federais, estaduais e municipais em uma única guia de pagamento.\n\nComo funciona:\n\n1. Escolha o anexo adequado à sua atividade econômica.\n2. Com base no seu faturamento mensal, aplique a alíquota correspondente para calcular os impostos a pagar.\n3. Pague uma única guia de impostos, facilitando a gestão financeira.\n\nLembre-se: as alíquotas variam de acordo com a faixa de faturamento e a atividade da empresa. O Simples Nacional é uma excelente opção para simplificar sua vida empresarial e reduzir a carga tributária.",
  ),CardDetail(
  id: "3",
  title: "Simule sua alíquota",
  url: "assets/images/logo.png",
  text:
  "Calcule seus impostos com o Simples Nacional!\n\nO Simples Nacional é um regime tributário simplificado no Brasil, ideal para pequenas e médias empresas. Ele unifica os impostos federais, estaduais e municipais em uma única guia de pagamento.\n\nComo funciona:\n\n1. Escolha o anexo adequado à sua atividade econômica.\n2. Com base no seu faturamento mensal, aplique a alíquota correspondente para calcular os impostos a pagar.\n3. Pague uma única guia de impostos, facilitando a gestão financeira.\n\nLembre-se: as alíquotas variam de acordo com a faixa de faturamento e a atividade da empresa. O Simples Nacional é uma excelente opção para simplificar sua vida empresarial e reduzir a carga tributária.",
  )];

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/fundoSimplesNacional2.png"), fit: BoxFit.cover)),
        child: Column(
          children: [
            for (final card in listCard)
              CardModelo(cardDetail: card),
            // InkWell(
            //   onTap: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (ctx) => CardDetailPage(cardDetail: cardDetail),
            //       ),
            //     );
            //   },
            //   child: Container(
            //     width: double.infinity,
            //     margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            //     child: Hero(
            //       tag: cardDetail.id,
            //       child: Card(
            //           elevation: 20,
            //           surfaceTintColor: Colors.blue,
            //           child: Row(
            //             children: [
            //               Padding(
            //                 padding: const EdgeInsets.all(10.0),
            //                 child: CircleAvatar(
            //                     radius: 50,
            //                     backgroundColor: Colors.transparent,
            //                     backgroundImage: const AssetImage("assets/images/fundo3.png"),
            //                     child: Image.asset(cardDetail.url)),
            //               ),
            //               Expanded(
            //                 child: Text(
            //                   cardDetail.title,
            //                   textAlign: TextAlign.center,
            //                   style: const TextStyle(
            //                     color: Colors.blue,
            //                     fontSize: 23,
            //                     fontWeight: FontWeight.bold,
            //                   ),
            //                 ),
            //               ),
            //             ],
            //           )),
            //     ),
            //   ),
            // ),
            // Container(
            //   width: double.infinity,
            //   margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            //   child: Card(
            //       elevation: 20,
            //       surfaceTintColor: Colors.blue,
            //       child: Row(
            //         children: [
            //           Padding(
            //             padding: const EdgeInsets.all(10.0),
            //             child: CircleAvatar(
            //               radius: 50,
            //               backgroundColor: Colors.transparent,
            //               backgroundImage: AssetImage("assets/images/fundo3.png"),
            //               child: Image.asset("assets/images/logo.png"),
            //             ),
            //           ),
            //           const Expanded(
            //             child: Text(
            //               "Simule sua alíquota",
            //               textAlign: TextAlign.center,
            //               style: TextStyle(
            //                 color: Colors.blue,
            //                 fontSize: 23,
            //                 fontWeight: FontWeight.bold,
            //               ),
            //             ),
            //           ),
            //         ],
            //       )),
            // ),
            // Container(
            //   width: double.infinity,
            //   margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            //   child: Card(
            //       elevation: 20,
            //       surfaceTintColor: Colors.blue,
            //       child: Row(
            //         children: [
            //           Padding(
            //             padding: const EdgeInsets.all(10.0),
            //             child: CircleAvatar(
            //               radius: 50,
            //               backgroundColor: Colors.transparent,
            //               backgroundImage: AssetImage("assets/images/fundo3.png"),
            //               child: Image.asset("assets/images/logo.png"),
            //             ),
            //           ),
            //           const Expanded(
            //             child: Text(
            //               "Simule sua alíquota",
            //               textAlign: TextAlign.center,
            //               style: TextStyle(
            //                 color: Colors.blue,
            //                 fontSize: 23,
            //                 fontWeight: FontWeight.bold,
            //               ),
            //             ),
            //           ),
            //         ],
            //       )),
            // ),
            // Container(
            //   width: double.infinity,
            //   margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            //   child: Card(
            //       elevation: 20,
            //       surfaceTintColor: Colors.blue,
            //       child: Row(
            //         children: [
            //           Padding(
            //             padding: const EdgeInsets.all(10.0),
            //             child: CircleAvatar(
            //               radius: 50,
            //               backgroundColor: Colors.transparent,
            //               backgroundImage: AssetImage("assets/images/fundo3.png"),
            //               child: Image.asset("assets/images/logo.png"),
            //             ),
            //           ),
            //           const Expanded(
            //             child: Text(
            //               "Simule sua alíquota",
            //               textAlign: TextAlign.center,
            //               style: TextStyle(
            //                 color: Colors.blue,
            //                 fontSize: 23,
            //                 fontWeight: FontWeight.bold,
            //               ),
            //             ),
            //           ),
            //         ],
            //       )),
            // ),
            // Container(
            //   width: double.infinity,
            //   margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            //   child: Card(
            //       elevation: 20,
            //       surfaceTintColor: Colors.blue,
            //       child: Row(
            //         children: [
            //           Padding(
            //             padding: const EdgeInsets.all(10.0),
            //             child: CircleAvatar(
            //               radius: 50,
            //               backgroundColor: Colors.transparent,
            //               backgroundImage: AssetImage("assets/images/fundo3.png"),
            //               child: Image.asset("assets/images/logo.png"),
            //             ),
            //           ),
            //           const Expanded(
            //             child: Text(
            //               "Simule sua alíquota",
            //               textAlign: TextAlign.center,
            //               style: TextStyle(
            //                 color: Colors.blue,
            //                 fontSize: 23,
            //                 fontWeight: FontWeight.bold,
            //               ),
            //             ),
            //           ),
            //         ],
            //       )),
            // ),
            // Container(
            //   width: double.infinity,
            //   margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            //   child: Card(
            //       elevation: 20,
            //       surfaceTintColor: Colors.blue,
            //       child: Row(
            //         children: [
            //           Padding(
            //             padding: const EdgeInsets.all(10.0),
            //             child: CircleAvatar(
            //               radius: 50,
            //               backgroundColor: Colors.transparent,
            //               backgroundImage: AssetImage("assets/images/fundo3.png"),
            //               child: Image.asset("assets/images/logo.png"),
            //             ),
            //           ),
            //           const Expanded(
            //             child: Text(
            //               "Simule sua alíquota",
            //               textAlign: TextAlign.center,
            //               style: TextStyle(
            //                 color: Colors.blue,
            //                 fontSize: 23,
            //                 fontWeight: FontWeight.bold,
            //               ),
            //             ),
            //           ),
            //         ],
            //       )),
            // ),
            // Container(
            //   width: double.infinity,
            //   margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            //   child: Card(
            //       elevation: 20,
            //       surfaceTintColor: Colors.blue,
            //       child: Row(
            //         children: [
            //           Padding(
            //             padding: const EdgeInsets.all(10.0),
            //             child: CircleAvatar(
            //               radius: 50,
            //               backgroundColor: Colors.transparent,
            //               backgroundImage: AssetImage("assets/images/fundo3.png"),
            //               child: Image.asset("assets/images/logo.png"),
            //             ),
            //           ),
            //           const Expanded(
            //             child: Text(
            //               "Simule sua alíquota",
            //               textAlign: TextAlign.center,
            //               style: TextStyle(
            //                 color: Colors.blue,
            //                 fontSize: 23,
            //                 fontWeight: FontWeight.bold,
            //               ),
            //             ),
            //           ),
            //         ],
            //       )),
            // ),
            // Container(
            //   width: double.infinity,
            //   margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            //   child: Card(
            //       elevation: 20,
            //       surfaceTintColor: Colors.blue,
            //       child: Row(
            //         children: [
            //           Padding(
            //             padding: const EdgeInsets.all(10.0),
            //             child: CircleAvatar(
            //               radius: 50,
            //               backgroundColor: Colors.transparent,
            //               backgroundImage: AssetImage("assets/images/fundo3.png"),
            //               child: Image.asset("assets/images/logo.png"),
            //             ),
            //           ),
            //           const Expanded(
            //             child: Text(
            //               "Simule sua alíquota",
            //               textAlign: TextAlign.center,
            //               style: TextStyle(
            //                 color: Colors.blue,
            //                 fontSize: 23,
            //                 fontWeight: FontWeight.bold,
            //               ),
            //             ),
            //           ),
            //         ],
            //       )),
            // ),
            // Container(
            //   width: double.infinity,
            //   margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            //   child: Card(
            //       elevation: 20,
            //       surfaceTintColor: Colors.blue,
            //       child: Row(
            //         children: [
            //           Padding(
            //             padding: const EdgeInsets.all(10.0),
            //             child: CircleAvatar(
            //               radius: 50,
            //               backgroundColor: Colors.transparent,
            //               backgroundImage: AssetImage("assets/images/fundo3.png"),
            //               child: Image.asset("assets/images/logo.png"),
            //             ),
            //           ),
            //           const Expanded(
            //             child: Text(
            //               "Simule sua alíquota",
            //               textAlign: TextAlign.center,
            //               style: TextStyle(
            //                 color: Colors.blue,
            //                 fontSize: 23,
            //                 fontWeight: FontWeight.bold,
            //               ),
            //             ),
            //           ),
            //         ],
            //       )),
            // ),
            // Container(
            //   width: double.infinity,
            //   margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            //   child: Card(
            //       elevation: 20,
            //       surfaceTintColor: Colors.blue,
            //       child: Row(
            //         children: [
            //           Padding(
            //             padding: const EdgeInsets.all(10.0),
            //             child: CircleAvatar(
            //               radius: 50,
            //               backgroundColor: Colors.transparent,
            //               backgroundImage: AssetImage("assets/images/fundo3.png"),
            //               child: Image.asset("assets/images/logo.png"),
            //             ),
            //           ),
            //           const Expanded(
            //             child: Text(
            //               "Simule sua alíquota",
            //               textAlign: TextAlign.center,
            //               style: TextStyle(
            //                 color: Colors.blue,
            //                 fontSize: 23,
            //                 fontWeight: FontWeight.bold,
            //               ),
            //             ),
            //           ),
            //         ],
            //       )),
            // ),
          ],
        ),
      ),
    ]);
  }
}
