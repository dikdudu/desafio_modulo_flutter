import 'package:flutter/material.dart';

class StatusCircle extends StatelessWidget {
  final String text;
  final bool active;

  const StatusCircle({Key key, this.text, this.active}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 15),
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            color: active ? Colors.blue : Colors.white,
            borderRadius: BorderRadius.circular(100),
            border: !active ? Border.all(color: Colors.grey) : null,
            boxShadow: active
                ? [
                    BoxShadow(
                        blurRadius: 1,
                        spreadRadius: 10,
                        color: Colors.grey[300])
                  ]
                : null,
          ),
        ),
        Text(text),
      ],
    );
  }
}
