import 'package:flutter/material.dart';

class MenuList extends StatelessWidget {
  final List<String> items = ['Suporte', 'Termos de serviço'];
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      child: Padding(
        padding: EdgeInsets.fromLTRB(5, 14, 10, 10),
        child: Text(
          '?',
          style: TextStyle(fontSize: 25),
        ),
      ),
      itemBuilder: (BuildContext build) {
        return items.map((item) {
          return PopupMenuItem(
            child: Text(
              item,
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          );
        }).toList();
      },
    );
  }
}
