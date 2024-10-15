import 'package:flutter/material.dart';
import 'package:mobile_practice/widgets/custom_password_field.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        backgroundColor: Colors.amberAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/starbucks.png', width: 200, height: 200,),
                const SizedBox(height: 16,),
                Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Correo electronico',
                            label: Text('Correo electronico'),

                          ),
                          keyboardType: TextInputType.emailAddress,
                         controller: _email,
                        ),
                        TextFieldPassword(controller: _password,),
                        const SizedBox(height: 16),
                        TextFieldPassword(controller: _confirmPassword, labelText: 'Confirmar contraseña', hintText: 'Confirmar contraseña',),
                        const SizedBox(height: 16,),
                        SizedBox(
                          width: double.infinity,
                          height: 48,
                          child: ElevatedButton(onPressed: () async {
                            print('registro');
                          },
                            style: OutlinedButton.styleFrom(backgroundColor: Colors.blueAccent, foregroundColor: Colors.white), child: const Text('Registrarse'),
                          ),

                        ),
                      ],
                    )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
