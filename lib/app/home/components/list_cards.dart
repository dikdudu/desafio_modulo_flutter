import 'dart:convert';

import 'package:desafio_modulo_flutter/app/home/tiles/info_column.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListCards extends StatefulWidget {
  @override
  _ListCardsState createState() => _ListCardsState();
}

class _ListCardsState extends State<ListCards> {
  List<dynamic> dados;

  @override
  void initState() {
    rootBundle.loadString('assets/dados.json').then((jsonData) {
      this.setState(() {
        dados = json.decode(jsonData);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.all(20),
        itemCount: dados?.length ?? 0,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                height: 330.h,
                child: Row(
                  children: [
                    Container(
                      height: 330,
                      width: 45,
                      decoration: BoxDecoration(
                        color: Color(int.parse('0XFF' + dados[index]['cor'])),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                        ),
                      ),
                      child: RotatedBox(
                        quarterTurns: -1,
                        child: Center(
                          child: Text(
                            dados[index]['tipo'],
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10, top: 15, right: 15, bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(dados[index]['nome']),
                                Visibility(
                                  visible: dados[index]['melhorPreco'],
                                  child: Container(
                                    color: Colors.orangeAccent,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.sanitizer,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          'Melhor Preço',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  InfoColumn(
                                    title: 'Nota',
                                    text: dados[index]['nota'].toString(),
                                    icon: Icons.star,
                                    money: false,
                                  ),
                                  InfoColumn(
                                    title: 'Tempo Médio',
                                    text: dados[index]['tempoMedio'],
                                    money: false,
                                    isTemp: true,
                                  ),
                                  Text(
                                    'R\$',
                                    style: TextStyle(
                                      fontSize: 70.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  InfoColumn(
                                    title: 'Preço',
                                    text: dados[index]['preco']
                                        .toStringAsFixed(2),
                                    money: true,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          );
        },
      ),
    );
  }
}
