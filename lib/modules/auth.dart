import 'package:flutter/material.dart';


class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Icon(Icons.ice_skating),
              ),
              Column(children: [
                Text('Emiliano', style: TextStyle(fontWeight: FontWeight.bold),),
                Text('Emiliano Zapata', style: TextStyle(color: Colors.amberAccent, fontSize: 12.0),)
              ],),
              Expanded(child: Align(alignment: Alignment.center, child: Icon(Icons.ice_skating))),
            ],
          ),
          Image.asset('assets/starbucks.png', width: double.infinity, height: 300),
        ],
      ),
    );
  }
}
