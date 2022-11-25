import 'package:components/widgets/custom_input_widget.dart';
import 'package:flutter/material.dart';

class InputsPage extends StatelessWidget {
  const InputsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Brayhan',
      'last_name': 'Suarez',
      'email': 'brayhan9505@gmail.com',
      'password': '123456',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                const CustomInputFieldWidget(
                  keyboardType: TextInputType.name,
                  hintText: 'Nombre de usuario',
                  labelText: 'Nombre',
                ),
                const SizedBox(height: 20),
                const CustomInputFieldWidget(
                  keyboardType: TextInputType.name,
                  hintText: 'Apellidos',
                  labelText: 'Apellidos',
                ),
                const SizedBox(height: 20),
                const CustomInputFieldWidget(
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'Correo Electrónico',
                  labelText: 'Email',
                ),
                const SizedBox(height: 20),
                const CustomInputFieldWidget(
                  obscureText: true,
                  hintText: 'Contraseña',
                  labelText: 'Contraseña',
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());

                    if (!myFormKey.currentState!.validate()) {
                      return;
                    }
                  },
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: const Center(child: Text('Guardar')),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
