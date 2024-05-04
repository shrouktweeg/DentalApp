import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Servicess extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final String Title;
  final String image;
  final String paragraph;
  final String appointment;
  final String time;

  const Servicess({
    super.key,
    // ignore: non_constant_identifier_names
    required this.Title,
    required this.image,
    required this.paragraph,
    required this.appointment,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff65C7FF),
        title: Text(Title),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 15, right: 10).w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
                child: Image.asset(
              image,
            )),
            SizedBox(
              height: 30.h,
            ),
            Text(
              paragraph,
              style: TextStyle(
                  fontSize: 18.sp, color: const Color.fromARGB(147, 0, 0, 0)),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 14.0, left: 14.0).w,
              child: const Divider(
                color: Color(0xff65C7FF),
                thickness: 1,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                Text(
                  'Available: ',
                  style:
                      TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  appointment,
                  style: TextStyle(
                    color: const Color(0xff65C7FF),
                    fontSize: 20.sp,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              children: [
                Text(
                  'Price: ',
                  style:
                      TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  time,
                  style: TextStyle(
                    color: const Color(0xff65C7FF),
                    fontSize: 20.sp,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
