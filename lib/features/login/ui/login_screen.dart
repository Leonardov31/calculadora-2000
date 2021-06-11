import 'package:calculator/app/app_constants.dart';
import 'package:calculator/features/calulator/ui/calculator_screen.dart';
import 'package:calculator/services/firebase_auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final email = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var firebaseUser = context.watch<User?>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora 2000"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 500,
                padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 30.0),
                margin: EdgeInsets.all(10.0),
                color: AppColors.black1,
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Text(
                        "Entre para salvar e visualizar seu histórico de operações!",
                        style: TextStyle(fontSize: 24),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 30),
                      TextFormField(
                        controller: email,
                        decoration: InputDecoration(
                          labelText: 'Email',
                        ),
                        validator: (value) => (value!.isEmpty)
                            ? 'O campo não pode ser vazio!'
                            : null,
                      ),
                      SizedBox(height: 20.0),
                      TextFormField(
                        controller: password,
                        decoration: InputDecoration(
                          labelText: 'Senha',
                        ),
                        validator: (value) => (value!.isEmpty)
                            ? 'O campo não pode ser vazio!'
                            : null,
                      ),
                      SizedBox(height: 20.0),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate())
                                  context.read<FirebaseAuthService>().signIn(
                                        email.text.trim(),
                                        password.text.trim(),
                                      );

                                if (firebaseUser != null) {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => CalculatorScreen(),
                                    ),
                                  );
                                }
                              },
                              child: Text('Entrar'),
                            ),
                          ),
                        ],
                      ),
                    ],
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
