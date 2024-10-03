import 'package:flutter/material.dart';


class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: Align(child: Text('data'))),
              SizedBox(width: 16),
              Expanded(child: Text('data')),
              SizedBox(width: 16),
              Expanded(child: Text('data')),
              SizedBox(width: 16),
            ],
          )
        ],
      ),
    );
  }
}
