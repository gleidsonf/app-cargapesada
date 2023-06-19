import 'package:cargapesada/pages/home.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
              const Text(
                'Email',
                style: TextStyle(fontSize: 12, color: Color.fromRGBO(33, 33, 33, 1))
              ),
              const SizedBox(
                height: 4,
              ),
              TextFormField(
                // autofocus: true,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  hintText: "Ex: joão@email.com",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(2.0)),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(217, 217, 217, 1),
                      width: 1,
                    )
                  ),
                ),
                style: const TextStyle(fontSize: 12),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Senha',
                style: TextStyle(fontSize: 12, color: Color.fromRGBO(33, 33, 33, 1))
              ),
              const SizedBox(
                height: 4,
              ),
              TextFormField(
                // autofocus: true,
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: "Digite a sua senha",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(2.0)),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(217, 217, 217, 1),
                      width: 1,
                    )
                  ),
                ),
                style: const TextStyle(fontSize: 12),
              ),
              const SizedBox(
                height: 48,
              ),
              Container(
                height: 42,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(234, 80, 21, 1)
                ),
                child: SizedBox.expand(
                  child: TextButton(
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Entrar",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}