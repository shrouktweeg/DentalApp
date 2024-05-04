import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class ResetPass extends StatelessWidget {
  ResetPass({super.key});
  final GlobalKey<FormState> passKey = GlobalKey();
  String? pass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
          padding: const EdgeInsets.only(top: 80.0, left: 20).w,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Reset Password',
                    style: TextStyle(
                        color: const Color(0xff44BAFD),
                        fontSize: 23.5.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 10, top: 80.w),
                  child: Text(
                    'New Password',
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                  ),
                ),
                Form(
                    key: passKey,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 5.0, right: 30.0, top: 8)
                              .w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Card(
                            elevation: 1.5,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                    const Radius.circular(9).w)),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                              ),
                              obscureText: true,
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
                            ),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Text(
                            'Confirm Password',
                            style: TextStyle(
                                fontSize: 18.sp, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 7.5.h,
                          ),
                          Card(
                              elevation: 1.5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                      const Radius.circular(9).w)),
                              child: TextFormField(
                                obscureText: true,
                                decoration: const InputDecoration(
                                  border: UnderlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'Empty Field';
                                  } else if (pass != val) {
                                    return 'Different password';
                                  } else {
                                    return null;
                                  }
                                },
                              )),
                        ],
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(
                          left: 50.0, right: 60, top: 50, bottom: 6)
                      .w,
                  child: MaterialButton(
                    height: 45.h,
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.all(const Radius.circular(7).w)),
                    minWidth: double.infinity,
                    onPressed: () {
                      if (passKey.currentState!.validate()) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const Home();
                        }));
                      }
                    },
                    color: const Color(0xff44BAFD),
                    child: Text(
                      'Reset Password ',
                      style: TextStyle(
                          fontSize: 19.5.sp, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ])),
    ));
  }
}
