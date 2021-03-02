import 'package:flutter/material.dart';

class MenuList extends StatelessWidget {
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
        return [
          PopupMenuItem(
            child: Text(
              'Suporte',
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          ),
          PopupMenuItem(
            child: Text(
              'Termos de serviço',
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          ),
        ];
      },
    );
  }
}
