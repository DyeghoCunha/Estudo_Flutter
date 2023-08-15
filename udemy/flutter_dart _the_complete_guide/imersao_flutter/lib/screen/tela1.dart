import 'package:flutter/material.dart';
import 'package:imersao_flutter/screen/tela2.dart';

class Tela1 extends StatefulWidget {
  const Tela1({super.key});

  @override
  State<Tela1> createState() => _Tela1State();
}

class _Tela1State extends State<Tela1> {
  var numero = 1;

  void soma() {
    setState(() {
      numero++;
    });
  }

  void diminui() {
    setState(() {
      numero--;
    });
  }

  void mudarPagina(){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyForm(),));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Testando"),
        actions: [IconButton(onPressed: mudarPagina , icon:Icon(Icons.add))],

      ),
      body: Center(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              width: 50,
              height: 50,
              decoration:
                  BoxDecoration(color: Colors.teal, borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Text("${numero}"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(onPressed: diminui, child: Text("Diminui")),
                ElevatedButton(
                  onPressed: soma,
                  child: const Text("Soma"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
