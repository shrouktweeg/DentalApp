import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/sign.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  GlobalKey<FormState> emailKey = GlobalKey();
  GlobalKey<FormState> userNameKey = GlobalKey();
  GlobalKey<FormState> passKey = GlobalKey();
  String? pass;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 24.0).r,
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image.asset(
                    'assets/color.png',
                    fit: BoxFit.cover,
                    height: 200.h,
                    width: double.infinity,
                  ),
                  Positioned(
                    top: 80.r,
                    left: -9.r,
                    child: Image.asset(
                      'assets/BlueHills.png',
                      width: 105.w,
                    ),
                  )
                ],
              ),
              Text(
                'Create Your Account',
                style: TextStyle(
                    fontSize: 19.sp,
                    color: const Color(0xff44BAFD),
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Form(
                key: userNameKey,
                child: Padding(
                  padding: const EdgeInsets.only(
                          left: 18.0, right: 18.0, top: 10, bottom: 6)
                      .w,
                  child: Card(
                    elevation: 1.5,
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.all(const Radius.circular(15).w)),
                    child: TextFormField(
                      validator: (val) {
                        if (val!.isEmpty) {
                          return 'Empty Field';
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          border: const UnderlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          hintText: 'Full Name',
                          hintStyle: TextStyle(fontSize: 17.sp),
                          prefixIcon: const Icon(Icons.person),
                          prefixIconColor: const Color(0xff44BAFD)),
                    ),
                  ),
                ),
              ),
              Form(
                key: emailKey,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 18.0, right: 18.0, bottom: 6)
                          .w,
                  child: Card(
                    elevation: 1.5,
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.all(const Radius.circular(15).w)),
                    child: TextFormField(
                      validator: (val) {
                        if (val!.isEmpty) {
                          return 'Empty Field';
                        } else if (!(val.contains('@'))) {
                          return 'Enter valid Email , which contains @';
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          border: const UnderlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          hintText: 'Email',
                          hintStyle: TextStyle(fontSize: 17.sp),
                          prefixIcon: const Icon(Icons.email),
                          prefixIconColor: const Color(0xff44BAFD)),
                    ),
                  ),
                ),
              ),
              Form(
                key: passKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 18.0,
                        right: 18.0,
                      ).r,
                      child: Card(
                        elevation: 1.5,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(const Radius.circular(15).w)),
                        child: TextFormField(
                          validator: (val) {
                            pass = val;
                            if (val!.isEmpty) {
                              return 'Empty Field';
                            } else if (val.length < 10) {
                              return 'Weak Password';
                            } else {
                              return null;
                            }
                          },
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                              border: const UnderlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              hintText: 'Password',
                              hintStyle: TextStyle(fontSize: 17.sp),
                              prefixIcon: const Icon(Icons.password),
                              prefixIconColor: const Color(0xff44BAFD)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 18.0,
                        right: 18.0,
                      ).r,
                      child: Card(
                        elevation: 1.5,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(const Radius.circular(15).w)),
                        child: TextFormField(
                          validator: (val) {
                            if (val!.isEmpty) {
                              return 'Empty Field';
                            } else if (val != pass) {
                              return 'Different Password';
                            } else {
                              return null;
                            }
                          },
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                              border: const UnderlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              hintText: 'Confirm Password',
                              hintStyle: TextStyle(fontSize: 17.sp),
                              prefixIcon: const Icon(Icons.password),
                              prefixIconColor: const Color(0xff44BAFD)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 18.5.h,
              ),
              Center(
                child: Text(
                  'Or Login With ',
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 13.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Ink(child: Image.asset('assets/google.png')),
                  SizedBox(
                    width: 60.w,
                  ),
                  Ink(child: Image.asset('assets/facebook.png')),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 28.0,
                  right: 28,
                  top: 15,
                ).w,
                child: MaterialButton(
                  height: 40.h,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.all(const Radius.circular(15).w)),
                  minWidth: double.infinity,
                  onPressed: () {
                    if (userNameKey.currentState!.validate() &&
                        emailKey.currentState!.validate() &&
                        passKey.currentState!.validate()) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const Home();
                      }));
                    }
                  },
                  color: const Color(0xff44BAFD),
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                        fontSize: 19.5.sp, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Registered to Blue Hills already ?',
                    style: TextStyle(fontSize: 15.5.sp),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const SignIn();
                        }));
                      },
                      child: Text(
                        'Log in',
                        style: TextStyle(
                            fontSize: 15.5.sp, color: const Color(0xff44BAFD)),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
