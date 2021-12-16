import 'package:admin_dashboard/ui/buttons/custom_outline_button.dart';
import 'package:admin_dashboard/ui/buttons/link_text.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 100),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 370),
          child: Form(
              child: Column(
            children: [
              //Email
              TextFormField(
                style: const TextStyle(color: Colors.white),
                decoration: _buildInputDecoration(
                    hint: 'Ingrese su E-mail',
                    label: 'E-mail',
                    icon: Icons.email_outlined),
                validator: (value) {},
              ),
              const SizedBox(
                height: 20,
              ),
              //Password
              TextFormField(
                obscureText: true,
                style: const TextStyle(color: Colors.white),
                decoration: _buildInputDecoration(
                    hint: '******',
                    label: 'Contraseña',
                    icon: Icons.lock_outline_rounded),
                validator: (value) {},
              ),
              const SizedBox(
                height: 20,
              ),
              CustomOutLineButton(
                onPressed: () {},
                text: 'Ingresar',
              ),

              LinkText(
                'Nueva Cuenta',
                color: Colors.grey.shade700,
                onPressed: () {
                  //TODO ir al registro
                },
              )
            ],
          )),
        ),
      ),
    );
  }

  InputDecoration _buildInputDecoration(
      {required String hint, required String label, required IconData icon}) {
    return InputDecoration(
        hintStyle: const TextStyle(color: Colors.grey),
        labelStyle: const TextStyle(color: Colors.grey),
        hintText: hint,
        labelText: label,
        prefixIcon: Icon(
          icon,
          color: Colors.grey,
        ),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white.withOpacity(.3))),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white.withOpacity(.3))));
  }
}
