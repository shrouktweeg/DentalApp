import 'package:flutter/material.dart';
import 'package:flutter_application_1/page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoarding2 extends StatelessWidget {
  const OnBoarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const MainPage();
          }));
        },
        child: Container(
            width: double.infinity,
            height: double.infinity,
            color: const Color(0xff65C7FF),
            child: Padding(
                padding:
                    const EdgeInsets.only(top: 35.0, right: 17, left: 10).w,
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
                      height: 55.h,
                    ),
                    Image.asset(
                      'assets/onBoard2.png',
                      width: 300.w,
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Text(
                      "Let's make you smile again",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25.sp,
                          color: Color(
                            0xff105881,
                          ),
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 14.h,
                    ),
                    Text(
                      '   To ensure our users are able to achieve their\n goals and enjoy every services offered',
                      style:
                          TextStyle(fontSize: 16.39.sp, fontFamily: 'specimen'),
                      textAlign: TextAlign.center,
                    )
                  ],
                ))),
      ),
    );
  }
}
