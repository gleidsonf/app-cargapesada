import 'package:cargapesada/pages/login.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: SizedBox(
          height: 45,
          child: Image.asset("assets/images/black_logo.png"),
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.exit_to_app, color: Colors.black),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                );
              },
            );
          },
        ),
      ),
      body: 
        Column(
          children: [
            Expanded(
              child: Container(
                color: const Color(0xFFF2F3F6),
                padding: const EdgeInsets.only(top: 56, left: 20, right: 20),
                child: ListView(
                  children: const <Widget>[
                    Text(
                      "Olá, administrador!", 
                      style: 
                        TextStyle(
                          fontSize: 24, 
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ), 
                        textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 39,
                    ),
                    Text(
                      "Você possui:",
                      style: 
                        TextStyle(
                          fontSize: 16, 
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                        ), 
                        textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.person,
                          color: Colors.black,
                          size: 24,
                        ),
                        SizedBox(
                          width: 14,
                        ),
                        Text(
                          "Clientes:",
                          style: 
                            TextStyle(
                              fontSize: 12, 
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                            ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "0 cadastrados",
                          style: 
                            TextStyle(
                              fontSize: 12,
                              color: Colors.black
                            ), 
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.local_shipping,
                          color: Colors.black,
                          size: 24,
                        ),
                        SizedBox(
                          width: 14,
                        ),
                        Text(
                          "Veículos:",
                          style: 
                            TextStyle(
                              fontSize: 12, 
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                            ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "0 cadastrados",
                          style: 
                            TextStyle(
                              fontSize: 12,
                              color: Colors.black
                            ), 
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.inventory,
                          color: Colors.black,
                          size: 24,
                        ),
                        SizedBox(
                          width: 14,
                        ),
                        Text(
                          "Encomendas:",
                          style: 
                            TextStyle(
                              fontSize: 12, 
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                            ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "0 cadastrados",
                          style: 
                            TextStyle(
                              fontSize: 12,
                              color: Colors.black
                            ), 
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 40, left: 20, right: 20),
              child: Column(
                children: [
                  Container(
                    height: 42,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(234, 80, 21, 1)
                    ),
                    child: SizedBox.expand(
                      child: TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.person_add, color: Colors.white),
                        label: const Text(
                          "Clientes",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 42,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(234, 80, 21, 1)
                    ),
                    child: SizedBox.expand(
                      child: TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.local_shipping, color: Colors.white),
                        label: const Text(
                          "Veículos",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 42,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(234, 80, 21, 1)
                    ),
                    child: SizedBox.expand(
                      child: TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.inventory, color: Colors.white),
                        label: const Text(
                          "Encomendas",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
    );
  }
}