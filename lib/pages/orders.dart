import 'package:flutter/material.dart';
import 'package:cargapesada/pages/home.dart';
import 'package:cargapesada/components/custom_app_bar.dart';
import 'package:cargapesada/components/order_card.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        icon: Icons.arrow_back,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const HomePage(),
            ),
          );
        },
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 18),
                child: const Text(
                  "Encomendas",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const OrderCard(
                origin: 'São Paulo - SP',
                destination: 'Brasília - DF',
                size: '11 cm X 22 cm X 33 cm',
                weight: '1.234,00g',
              ),
              const OrderCard(
                origin: 'São Paulo - SP',
                destination: 'Ribeirão Preto - SP',
                size: '10 cm X 10 cm X 10 cm',
                weight: '1.000,00g',
              ),
              SizedBox(height: MediaQuery.of(context).viewInsets.bottom),
            ],
          ),
        ),
      ),
    );
  }
}
