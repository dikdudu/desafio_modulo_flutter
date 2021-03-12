import 'package:desafio_modulo_flutter/app/home/components/header_address.dart';
import 'package:desafio_modulo_flutter/app/home/tiles/menu_list.dart';
import 'package:desafio_modulo_flutter/app/home/tiles/menu_select.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'components/list_cards.dart';

class HomePage extends StatefulWidget {
  static String routerName = '/';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget appBar = AppBar(
      title: Text(
        'Escolha uma Revenda',
        style: TextStyle(fontSize: 60.sp),
      ),
      actions: [
        MenuSelect(),
        MenuList(),
      ],
    );

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: appBar,
      body: Column(
        children: [
          HeaderAddress(),
          ListCards(),
        ],
      ),
    );
  }
}
