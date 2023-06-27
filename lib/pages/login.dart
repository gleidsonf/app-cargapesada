import 'package:flutter/material.dart';
import 'package:cargapesada/pages/home.dart';
import 'package:cargapesada/components/custom_button.dart';
import 'package:cargapesada/components/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Container(
          padding: const EdgeInsets.only(left: 16, right: 16),
          color: Colors.white,
          alignment: Alignment.center,
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              SizedBox(
                width: 257,
                height: 106,
                child: Image.asset("assets/images/orange_logo.png"),
              ),
              const SizedBox(
                height: 48,
              ),
              const CustomTextField(
                label: 'Email',
                placeholder: 'Ex: joão@email.com',
                textStyle: TextStyle(fontSize: 12),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 15,
              ),
              const CustomTextField(
                label: 'Senha',
                placeholder: 'Digite a sua senha',
                textStyle: TextStyle(fontSize: 12),
                obscureText: true,
              ),
              const SizedBox(
                height: 48,
              ),
              CustomButton(
                text: 'Entrar',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
