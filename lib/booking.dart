import 'package:flutter/material.dart';
import 'package:omni_datetime_picker/omni_datetime_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  showDatePicker() async {
    DateTime? dateTime = await showOmniDateTimePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1600).subtract(const Duration(days: 3652)),
      lastDate: DateTime.now().add(
        const Duration(days: 3652),
      ),
      is24HourMode: false,
      isShowSeconds: false,
      minutesInterval: 1,
      secondsInterval: 1,
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      constraints: BoxConstraints(
        maxWidth: 350.w,
        maxHeight: 650.h,
      ),
      transitionBuilder: (context, anim1, anim2, child) {
        return FadeTransition(
          opacity: anim1.drive(
            Tween(
              begin: 0,
              end: 1,
            ),
          ),
          child: child,
        );
      },
      transitionDuration: const Duration(milliseconds: 200),
      barrierDismissible: true,
      selectableDayPredicate: (dateTime) {
        if (dateTime == DateTime(2024, 4, 25)) {
          return false;
        } else {
          return true;
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: MaterialButton(
        onPressed: () {
          showDatePicker();
        },
        color: const Color(0xff65C7FF),
        minWidth: size.width / 2.w,
        height: 47.h,
        child: Text(
          'Booking appointment',
          style: TextStyle(color: Colors.white, fontSize: 20.sp),
        ),
      ),
    );
  }
}
