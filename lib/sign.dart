import 'package:flutter/material.dart';
import 'package:flutter_application_1/forgetpass.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  GlobalKey<FormState> emailKey = GlobalKey();
  GlobalKey<FormState> passKey = GlobalKey();
  bool? flag = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 24.0).w,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image.asset(
                    'assets/color.png',
                    fit: BoxFit.cover,
                    height: 220.h,
                    width: double.infinity,
                  ),
                  Positioned(
                    top: 80.r,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 60.r,
                      child: Image.asset(
                        'assets/BlueHills.png',
                        width: 160.w,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 60.h,
              ),
              Text(
                'Welcome to Blue Hills',
                style: TextStyle(
                    fontSize: 22.sp,
                    color: const Color(0xff44BAFD),
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 30.h,
              ),
              Form(
                key: emailKey,
                child: Padding(
                  padding: const EdgeInsets.only(
                          left: 18.0, right: 18.0, top: 10, bottom: 13)
                      .w,
                  child: Card(
                    elevation: 1.5,
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.all(const Radius.circular(15).w)),
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Empty Field';
                        } else if (!(value.contains('@'))) {
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
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 18.0,
                    right: 18.0,
                  ).w,
                  child: Card(
                    elevation: 1.5,
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.all(const Radius.circular(15).w)),
                    child: TextFormField(
                      validator: (val) {
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
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 23.0, top: 8.0, bottom: 13.0).w,
                child: Row(
                  children: [
                    Checkbox(
                      value: flag,
                      onChanged: (val) {
                        setState(() {
                          flag = val;
                        });
                      },
                    ),
                    Text(
                      'Remember me',
                      style: TextStyle(fontSize: 16.5.sp),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 17.0).r,
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return ForgetPass();
                            }));
                          },
                          child: const Text(
                            'Forget Password ?',
                            style: TextStyle(color: Color(0xff44BAFD)),
                          )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                        left: 24.0, right: 24, top: 10, bottom: 6)
                    .w,
                child: MaterialButton(
                  height: 45.h,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.all(const Radius.circular(15).w)),
                  minWidth: double.infinity,
                  onPressed: () {
                    if (emailKey.currentState!.validate() &&
                        passKey.currentState!.validate()) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const Home();
                      }));
                    }
                  },
                  color: const Color(0xff44BAFD),
                  child: Text(
                    'Sign In ',
                    style: TextStyle(
                        fontSize: 19.5.sp, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'New to Blue Hills ?',
                    style: TextStyle(fontSize: 15.5.sp),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const LogIn();
                        }));
                      },
                      child: Text(
                        'Register',
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
