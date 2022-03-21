import 'package:flutter/material.dart';
import 'widgets/custom_button.dart';
import 'widgets/custom_input.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final TextEditingController controllerNumeroVoo = TextEditingController();
    final TextEditingController controllerCompanhia = TextEditingController();
    final TextEditingController controllerAeroporto = TextEditingController();
    final _formKey = GlobalKey<FormState>();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Cadastro de Vôos'),
        ),
        body: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  CustomInput(
                    label: 'Número do vôo',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Campo não preenchido';
                      }
                      return null;
                    },
                    controller: controllerNumeroVoo,
                  ),
                  CustomInput(
                    label: 'Companhia',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Campo não preenchido';
                      }
                      return null;
                    },
                    controller: controllerCompanhia,
                  ),
                  CustomInput(
                    label: 'Aeroporto',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Campo não preenchido';
                      }
                      return null;
                    },
                    controller: controllerAeroporto,
                  ),
                ],
              ),
            ),
            CustomButton(onPressed: () {
              if (_formKey.currentState!.validate()) {}
            })
          ],
        ),
      ),
    );
  }
}
