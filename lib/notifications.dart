import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff65C7FF),
        title: const Text('Notification'),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 3, right: 4.0, top: 5).w,
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                const Notficationn(
                    image: 'assets/offer.jpg',
                    title: 'There is an offer for Scaling.',
                    time: '30 Minutes ago'),
                SizedBox(
                  height: 2.h,
                ),
                const Divider(
                  color: Colors.grey,
                  thickness: 0.5,
                ),
                const Notficationn(
                    image: 'assets/doctor.jpg',
                    title: 'Dr: Tarek Tweeg replied to you.',
                    time: '1 hours ago'),
                SizedBox(
                  height: 2.h,
                ),
                const Divider(
                  color: Colors.grey,
                  thickness: 0.5,
                ),
                const Notficationn(
                    image: 'assets/accepted.jpg',
                    title: 'Payment completed successfully.',
                    time: '1 day ago'),
                SizedBox(
                  height: 2.h,
                ),
                const Divider(
                  color: Colors.grey,
                  thickness: 0.5,
                ),
                const Notficationn(
                    image: 'assets/alert.png',
                    title:
                        'Reminder: Your reservation is \ntomorrow at 7 p.m .',
                    time: '2 day ago'),
                SizedBox(
                  height: 2.h,
                ),
                const Divider(
                  color: Colors.grey,
                  thickness: 0.5,
                ),
                const Notficationn(
                    image: 'assets/accepted.jpg',
                    title: 'Booked successfully.',
                    time: '4 days ago'),
                const Divider(
                  color: Colors.grey,
                  thickness: 0.5,
                ),
                SizedBox(
                  height: 2.h,
                ),
                const Notficationn(
                    image: 'assets/error.jpg',
                    title:
                        'An error occurred with your\n reservation, please try again.',
                    time: '4 day ago'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Notficationn extends StatelessWidget {
  final String image;
  final String title;
  final String time;
  const Notficationn(
      {super.key,
      required this.image,
      required this.title,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 1, right: 1, top: 10, bottom: 5).w,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(
                image,
              ),
              radius: 35.r,
            ),
            SizedBox(
              width: 19.w,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0).r,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 17.sp,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    time,
                    style: TextStyle(fontSize: 16.sp, color: Colors.grey),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
