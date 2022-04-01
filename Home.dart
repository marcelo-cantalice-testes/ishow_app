//import 'dart:html';

// ignore_for_file: file_names, prefer_const_constructors

import 'dart:ui';

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
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(color: Colors.grey)
                        ]), //Cria uma sombra para o Widget
                    child: Column(
                      //Campo do e-mail
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                icon: Icon(Icons.person),
                                border: InputBorder.none,
                                hintText: "Email",
                                hintStyle: TextStyle(
                                    color: Colors.grey[600], fontSize: 18)),
                          ),
                        ),
                        Container(
                          //campo da senha
                          padding: EdgeInsets.all(8),
                          child: TextField(
                            obscureText: true,
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                                icon: Icon(Icons.lock),
                                border: InputBorder.none,
                                hintText: "Senha",
                                hintStyle: TextStyle(
                                    color: Colors.grey[600], fontSize: 18)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    //cria uma box de tamanho definido para coloocar um widget
                    height: 20,
                    /*  child: InkWell(
                        //funciona como Gesture Dector, porem aplkicando sobre um obj retagular
                        ),*/
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 50,
                      child: Center(
                        child: Text(
                          "Entrar",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(colors: [Color.fromRGBO(255, 100, 127, 1), Color.fromRGBO(255, 123, 145, 1)])
                      ),
                    ),
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
