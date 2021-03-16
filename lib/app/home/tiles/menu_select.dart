import 'package:flutter/material.dart';

class MenuSelect extends StatefulWidget {
  @override
  _MenuSelectState createState() => _MenuSelectState();
}

class _MenuSelectState extends State<MenuSelect> {
  bool _fisValue = false;
  final List<String> filtros = ['Melhor Avaliação', 'Mais Rápido', 'Mais Barato'];
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (BuildContext context) {
        return [
          PopupMenuItem(
            child: Column(
              children: filtros.map((item) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      item,
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                    Checkbox(
                      onChanged: (bool value) {

                      },
                      value: _fisValue,
                    ),
                  ],
                );
              }).toList(),
            ),
          ),
        ];
      },
      icon: Icon(Icons.import_export),
    );
  }
}
