import 'package:flutter/material.dart';

import '../tiles/status_circle.dart';

class StatusBuy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const StatusCircle(text: 'Comprar', active: true),
          Expanded(
            child: Column(
              children: [
                Divider(
                  color: Colors.black,
                ),
                SizedBox(height: 25,)
              ],
            ),
          ),
          const StatusCircle(text: 'Pagamento', active: false),
          Expanded(
            child: Column(
              children: [
                Divider(
                  color: Colors.black,
                ),
                SizedBox(height: 25,)
              ],
            ),
          ),
          const StatusCircle(text: 'Confirmação', active: false),
        ],
      ),
    );
  }
}
