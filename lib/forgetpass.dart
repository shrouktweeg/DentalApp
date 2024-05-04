import 'package:flutter/material.dart';
import 'package:flutter_application_1/resetpass.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPass extends StatelessWidget {
  ForgetPass({super.key});
  final GlobalKey<FormState> emailKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
            padding: const EdgeInsets.only(top: 80.0, left: 30).r,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(
                        color: const Color(0xff44BAFD),
                        fontSize: 23.5.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10.0, right: 10, top: 80).r,
                  child: Text(
                    'Enter Your Email',
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                  ),
                ),
                Form(
                  key: emailKey,
                  child: Padding(
                    padding: const EdgeInsets.only(
                            left: 5.0, right: 27.0, top: 8, bottom: 13)
                        .w,
                    child: Card(
                      elevation: 1.5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(9).w)),
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
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                          left: 30.0, right: 40, top: 30, bottom: 6)
                      .w,
                  child: MaterialButton(
                    height: 45.h,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7).w)),
                    minWidth: double.infinity,
                    onPressed: () {
                      if (emailKey.currentState!.validate()) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ResetPass();
                        }));
                      }
                    },
                    color: const Color(0xff44BAFD),
                    child: Text(
                      'Forgot Password ',
                      style: TextStyle(
                          fontSize: 19.5.sp, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
