import 'package:flutter/material.dart';
import 'package:flutter_application_1/onboarding.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Color(0xff65C7FF)));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
        minTextAdapt: true,
        designSize: Size(365, 690),
        child: MaterialApp(debugShowCheckedModeBanner: false, home: Splash()));
  }
}

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const OnBoarding();
          }));
        },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: const Color(0xff65C7FF),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/BlueHills.png',
                width: 150.w,
              ),
              SizedBox(
                height: 7.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 27.0).r,
                child: Text(
                  ' Blue Hills',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
