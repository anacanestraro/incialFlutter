import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

    Color fontColor = Colors.white;
    Color fontColorBlack = Colors.black;
    Color fontColorBlue = Colors.blue[300]!;
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
                fontColorBlack,
                fontColorBlue,
                fontColorBlack,
                fontColorBlue,
              ],
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Stack(
            children: <Widget>[
              Positioned(
                right: 5,
                top: 0,
                child: ClipOval(
                  child: SizedBox(
                    width: 90,
                    height: 130,
                    child: Image.asset(
                      'images/tartaruga.png',
                      // fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
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
                    const SizedBox(height: 20),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.phone_callback,
                          color: fontColor,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          '+55 99999-9999',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: fontColor,
                          ),
                        ),
                        const SizedBox(width: 5),
                        Icon(
                          Icons.email,
                          color: fontColor,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          'dias14@gmail.com',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: fontColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}