import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MedicalRecord extends StatelessWidget {
  const MedicalRecord({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Medical Record',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Color(0xff65C7FF),
        ),
      ),
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 30, top: 50).w,
          child: Column(
            children: [
              Image.asset(
                'assets/medicalRecord.png',
              ),
              SizedBox(
                height: 45.h,
              ),
              Text(
                'You don\'t have any medical record.',
                style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 17.h,
              ),
              Text(
                'A detailed health history helps a doctor diagnose you better.',
                style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
