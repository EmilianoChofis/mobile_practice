import 'package:flutter/material.dart';


class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.account_circle_outlined),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Aqui va el nombre",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Hace 10 minutos",
                      style: TextStyle(color: Colors.black45, fontSize: 12.0),
                    ),
                  ],
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.more_vert),
                )
              ],
            ),
            Image.asset('assets/starbucks.png', width: 200, height: 200,),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.favorite, color: Colors.red,),
                  Icon(Icons.message_outlined),
                  Icon(Icons.send_and_archive_outlined),
                  Spacer(),
                  Icon(Icons.bookmark_outline)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
