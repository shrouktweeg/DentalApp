import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/sign.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xff65C7FF),
        child: Padding(
          padding: const EdgeInsets.only(
                  right: 17.0, left: 17.0, top: 280, bottom: 10)
              .w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/BlueHills.png',
                width: 150.w,
              ),
              SizedBox(
                height: 100.h,
              ),
              Card(
                elevation: 7,
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.all(const Radius.circular(30).w)),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const SignIn();
                    }));
                  },
                  minWidth: double.infinity,
                  child: Center(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 19.sp),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.all(const Radius.circular(30).w)),
                elevation: 7,
                color: const Color(0xff44BAFD),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const LogIn();
                    }));
                  },
                  minWidth: double.infinity,
                  child: Center(
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white, fontSize: 19.sp),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
