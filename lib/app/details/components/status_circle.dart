import 'package:flutter/material.dart';

class StatusCircle extends StatelessWidget {
  final String text;
  final bool active;

  const StatusCircle({Key key, this.text, this.active}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        active
            ? Container(
                margin: EdgeInsets.only(bottom: 15),
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 1,
                        spreadRadius: 10,
                        color: Colors.grey[300])
                  ],
                ),
              )
            : Container(
                margin: EdgeInsets.only(bottom: 15),
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
        Text(text),
      ],
    );
  }
}
