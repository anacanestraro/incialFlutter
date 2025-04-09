import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

    Color fontColor = Colors.white;
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage',),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
      body: Center(
        child: Container(
          height: 180,
          width: 330,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.black,
                Colors.pink[300]!,
                Colors.black,
                Colors.pink[300]!,
              ],
            )
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:<Widget>[
                Text(
                  'Lucas Dias - 14',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: fontColor,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Capitão',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: fontColor,
                  ),
                ),
                Text(
                  'Alta direita',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: fontColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}