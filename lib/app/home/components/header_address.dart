import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderAddress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var screenHeight = MediaQuery.of(context).size.height;
    // var statusBarHeight = MediaQuery.of(context).padding.top;

    return Container(
      padding: EdgeInsets.all(15),
      color: Colors.white,
      height: 250.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Botijões de 13gk em:',
                style: TextStyle(color: Colors.grey, fontSize: 33.sp),
              ),
              Text(
                'Av Paulista, 1001',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 50.sp,
                ),
              ),
              Text(
                'Paulista, São Paulo, SP',
                style: TextStyle(color: Colors.grey, fontSize: 38.sp),
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
                    size: 90.sp,
                  ),
                  Text(
                    'Mudar',
                    style: TextStyle(
                      fontSize: 35.sp,
                      color: Colors.blue,
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
