//import 'dart:html';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              //Parte superior da tela de login
              height: 400,
              //color: Colors.orange,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/fundo.png"), fit: BoxFit.fill)),
              child: Stack(
                children: [
                  Positioned(
                      left: 10, child: Image.asset("images/detalhe1.png")),
                  Positioned(
                      left: 50, child: Image.asset("images/detalhe2.png")),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [BoxShadow(color: Colors.grey)]),
                    child: Text("Area login"),
                  ),
                  SizedBox(
                    //cria uma box de tamanho definido para coloocar um widget
                    height: 20,
                  /*  child: InkWell(
                        //funciona como Gesture Dector, porem aplkicando sobre um obj retagular
                        ),*/
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Esqueci minha senha",
                    style: TextStyle(
                        color: Color.fromRGBO(255, 100, 127, 1),
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
