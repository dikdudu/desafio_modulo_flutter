import 'package:desafio_modulo_flutter/app/details/components/status_circle.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Selecionar Produto'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () {},
              child: Text(
                '?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                StatusCircle(text: 'Comprar', active: true),
                Expanded(
                  child: Divider(
                    color: Colors.black,
                    endIndent: 5,
                    indent: 5,
                  ),
                ),
                StatusCircle(text: 'Pagamento', active: false),
                Expanded(
                  child: Divider(
                    color: Colors.black,
                    endIndent: 5,
                    indent: 5,
                  ),
                ),
                StatusCircle(text: 'Confirmação', active: false),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            padding: EdgeInsets.all(20),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      CircleAvatar(
                        child: Text('1'),
                        backgroundColor: Colors.black,
                      ),
                      SizedBox(width: 10),
                      Text('Unigar - Botijao de 13kg'),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'R\$',
                        style: TextStyle(),
                      ),
                      SizedBox(width: 3),
                      Text(
                        '74,90',
                        style: TextStyle(
                          height: 0.3,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.home,
                              size: 50,
                              color: Colors.grey,
                            ),
                            Column(
                              children: [
                                Text('Unigas'),
                                Text('4.5'),
                              ],
                            ),
                            Text('30-45 min'),
                            Container(
                              padding: EdgeInsets.all(5),
                              color: Colors.black,
                              child: Text(
                                'Multimarcas',
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text('Botijao de 13Kg'),
                                Text('Unigas'),
                                Row(
                                  children: [
                                    Text(
                                      'R\$',
                                      style: TextStyle(),
                                    ),
                                    SizedBox(width: 3),
                                    Text(
                                      '74,90',
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  child: Text(
                                    '-',
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  color: Colors.orange,
                                  child: Text('1'),
                                ),
                                CircleAvatar(
                                  child: Text(
                                    '+',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
