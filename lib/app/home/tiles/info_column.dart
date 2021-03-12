import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoColumn extends StatelessWidget {
  final String title;
  final String text;
  final IconData icon;
  final bool money;
  final bool isTemp;

  const InfoColumn({
    Key key,
    this.title,
    this.text,
    this.icon,
    this.money,
    this.isTemp,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 35.sp,
          ),
        ),
        SizedBox(height: 8.h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              text,
              style: TextStyle(
                fontSize: 65.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Visibility(
              visible: icon != null,
              child: Icon(
                icon,
                color: Colors.yellow,
                size: 70.sp,
              ),
            ),
            Visibility(
              visible: isTemp != null,
              child: Text(
                'min',
                style: TextStyle(fontSize: 30.sp, color: Colors.grey),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
