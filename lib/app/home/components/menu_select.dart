import 'package:flutter/material.dart';

class MenuSelect extends StatefulWidget {
  @override
  _MenuSelectState createState() => _MenuSelectState();
}

class _MenuSelectState extends State<MenuSelect> {
  bool _fisValue = false;
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (BuildContext context) {
        return [
          PopupMenuItem(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Melhor Avaliação',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                    Checkbox(
                      onChanged: (bool value) {},
                      value: _fisValue,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Mais rápido',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                    Checkbox(
                      onChanged: (bool value) {},
                      value: _fisValue,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Mais barato',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                    Checkbox(
                      onChanged: (bool value) {},
                      value: _fisValue,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ];
      },
      icon: Icon(Icons.import_export),
    );
  }
}
