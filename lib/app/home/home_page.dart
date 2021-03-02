import 'package:desafio_modulo_flutter/app/home/components/menu_select.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static String routerName = '/';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var statusBarHeight = MediaQuery.of(context).padding.top;

    Widget appBar = AppBar(
      title: Text('Escolha uma Revenda'),
      actions: [
        MenuSelect(),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 14, 10, 15),
          child: InkWell(
            onTap: () {},
            child: Text(
              '?',
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ),
        ),
      ],
    );

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: appBar,
      body: Column(
        children: [
          Container(
              padding: EdgeInsets.all(15),
              color: Colors.white,
              height: screenHeight * 0.12,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Botijões de 13gk em:',
                        style: TextStyle(color: Colors.grey, fontSize: 13),
                      ),
                      Text(
                        'Av Paulista, 1001',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      Text(
                        'Paulista, São Paulo, SP',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ],
                  ),
                  InkWell(
                    child: InkWell(
                      onTap: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.place,
                            color: Colors.blue,
                          ),
                          Text(
                            'Mudar'.toUpperCase(),
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
