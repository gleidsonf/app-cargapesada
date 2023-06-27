import 'package:flutter/material.dart';
import 'package:cargapesada/pages/login.dart';
import 'package:cargapesada/pages/orders.dart';
import 'package:cargapesada/pages/clients.dart';
import 'package:cargapesada/components/custom_button.dart';
import 'package:cargapesada/components/custom_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        icon: Icons.exit_to_app,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const LoginPage(),
            ),
          );
        },
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: const Color(0xFFF2F3F6),
              padding: const EdgeInsets.only(top: 56, left: 20, right: 20),
              child: ListView(
                children: const <Widget>[
                  Text(
                    "Olá, administrador!",
                    style: TextStyle(
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
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
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
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "0 cadastrados",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
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
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "0 cadastrados",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
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
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "0 cadastrados",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
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
                CustomButton(
                  text: 'Clientes',
                  icon: Icons.person_add,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ClientsPage(),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomButton(
                  text: 'Veículos',
                  icon: Icons.local_shipping,
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomButton(
                  text: 'Encomendas',
                  icon: Icons.inventory,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OrdersPage(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
