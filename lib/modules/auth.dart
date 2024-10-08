import 'package:flutter/material.dart';


class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool _isBlack = true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/starbucks.png', width: 100, height: 100,),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Correo electronico',
                  label: Text('Correo electronico'),
                  labelStyle: TextStyle(color: Colors.black26)
                ),
                keyboardType: TextInputType.emailAddress,
                controller: _email,
              ),
              const SizedBox(height: 16,),
              TextFormField(
                decoration: InputDecoration(
                    hintText: 'Contraseña',
                    label: const Text('Contraseña'),
                    labelStyle: const TextStyle(color: Colors.black26),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                      _isBlack = !_isBlack;
                          });
                          }, icon: Icon(
                        _isBlack ?
                        Icons.visibility :
                        Icons.visibility_off)),
                ),
                controller: _password,
                obscureText: _isBlack,
              ),
              const SizedBox(height: 16,),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(onPressed: () {
                  print('email: ${_email.text}');
                  print('email: ${_email.text}');

                }, child: const Text('inicia sesion')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
