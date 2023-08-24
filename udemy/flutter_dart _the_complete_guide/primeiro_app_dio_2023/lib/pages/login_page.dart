import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.amber,
                child: Icon(Icons.person, size: 125,color: Theme.of(context).colorScheme.onBackground,),
              ),
              const SizedBox(height: 10,),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30),
                color: Colors.green,
                height: 30,
                alignment: Alignment.center,
                child: Text("Informe seu email"),
              ),
              SizedBox(height: 10,),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30),
                color: Colors.green,
                height: 30,
                alignment: Alignment.center,
                child: Text("Informe seu email"),
              ),
             Expanded(child: Container()),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30),
                color: Colors.green,
                height: 30,
                alignment: Alignment.center,
                child: Text("Login"),
              ),
          const SizedBox(
            height: 20,),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30),
                height: 30,
                alignment: Alignment.center,
                child: Text("Cadastro"),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
