import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perfil"),
        backgroundColor: Colors.blue,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          Navigator.pushNamed(context, '/home'),
        },
        child: const Icon(Icons.chevron_right),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [CircleAvatar(
                backgroundColor: Colors.brown.shade800,
                radius: 48,
                child: const Text('AH'),
              ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox( child: Text('correo', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)),
                    SizedBox(child: Text('nombre', style: TextStyle(fontSize: 14),))
                  ],
                )
              ]
            ),
            const Spacer(),
            SizedBox(
              width: 200,
              height: 47,
              child: ElevatedButton(
                  onPressed: () async {
                    await FirebaseAuth.instance.signOut();
              }, child: const Text('cerrar sesion')),
            )
          ],
        ),
      ),
    );
  }
}
