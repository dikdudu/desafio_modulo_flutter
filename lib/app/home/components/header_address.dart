import 'package:flutter/material.dart';

class HeaderAddress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var statusBarHeight = MediaQuery.of(context).padding.top;

    return Container(
      padding: EdgeInsets.all(15),
      color: Colors.white,
      height: screenHeight * 0.12,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Botijões de 13gk em:',
                style: TextStyle(color: Colors.grey, fontSize: 13),
              ),
              Text(
                'Av Paulista, 1001',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              Text(
                'Paulista, São Paulo, SP',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ],
          ),
          InkWell(
            child: InkWell(
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.place,
                    color: Colors.blue,
                    size: 30,
                  ),
                  Text(
                    'Mudar'.toUpperCase(),
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
