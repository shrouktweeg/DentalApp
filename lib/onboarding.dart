import 'package:flutter/material.dart';
import 'package:flutter_application_1/onboarding2.dart';
import 'package:flutter_application_1/page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const OnBoarding2();
          }));
        },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: const Color(0xff65C7FF),
          child: Padding(
            padding: const EdgeInsets.only(top: 35.0, right: 17, left: 10).w,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 280.0).r,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const MainPage();
                      }));
                    },
                    child: Text(
                      'Skip',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
                Image.asset(
                  'assets/onBoard1.png',
                  width: 300.w,
                ),
                SizedBox(
                  height: 40.h,
                ),
                Text(
                  ' Find the best dental specialists\n  in Blue Hills',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 22.sp,
                      color: const Color(
                        0xff105881,
                      ),
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 14.h,
                ),
                Text(
                  '  Highly skilled specialists to give you the best dental care and easy communication through chats and calls',
                  style: TextStyle(fontSize: 16.39.sp, fontFamily: 'specimen'),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
