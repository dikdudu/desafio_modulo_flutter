import 'dart:convert';

import 'package:desafio_modulo_flutter/app/details/details_page.dart';
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
        padding: EdgeInsets.all(40.h),
        itemCount: dados?.length ?? 0,
        itemBuilder: (_, index) {
          return Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(DetailsPage.routerName);

                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  margin: EdgeInsets.fromLTRB(0, 20.h, 0, 0),
                  height: 290.h,
                  child: Row(
                    children: [
                      Container(
                        width: 100.h,
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
                                fontWeight: FontWeight.bold,
                                fontSize: 40.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 30.h, top: 30.h, right: 0, bottom: 30.h),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 10.h),
                                    child: Text(
                                      dados[index]['nome'],
                                      style: TextStyle(fontSize: 40.sp),
                                    ),
                                  ),
                                  Visibility(
                                    visible: dados[index]['melhorPreco'],
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.h, vertical: 15.h),
                                      decoration: BoxDecoration(
                                        color: Colors.orangeAccent,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10.h),
                                          bottomLeft: Radius.circular(10.h),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.label,
                                            color: Colors.white,
                                            size: 60.sp,
                                          ),
                                          Text(
                                            'Melhor Preço',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 35.sp,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, right: 20),
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
                                        fontSize: 65.sp,
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
