import 'package:flutter/material.dart';
import 'package:flutter_application_1/booking.dart';
import 'package:flutter_application_1/chat.dart';
import 'package:flutter_application_1/home1.dart';

import 'package:flutter_application_1/medical_record.dart';
import 'package:flutter_application_1/mydoctors.dart';
import 'package:flutter_application_1/notifications.dart';
import 'package:flutter_application_1/page.dart';
import 'package:flutter_application_1/payments.dart';

import 'package:flutter_application_1/setting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(

            //start of appbar
            appBar: AppBar(
              //tabbar
              bottom: TabBar(labelColor: Colors.red, tabs: [
                Text('Home',
                    style: TextStyle(color: Colors.black, fontSize: 18.sp)),
                Text('Schedule',
                    style: TextStyle(color: Colors.black, fontSize: 18.sp)),
                Text('Messages',
                    style: TextStyle(color: Colors.black, fontSize: 18.sp)),
              ]),
              //end of tabbar
              title: const Text('Dental App '),
              actions: [
                IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Notifications();
                    }));
                  },
                  icon: const Icon(Icons.notifications),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                ),
              ],
              foregroundColor: Colors.black,
              elevation: 0,
              backgroundColor: Colors.white,
            ),
            //start of drawer
            drawer: Drawer(
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 50.0, left: 25, right: 25).w,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Row(
                          children: [
                            SizedBox(
                              width: 60.w,
                              height: 60.h,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(70).w,
                                child: Image.asset(
                                  'assets/profile.jpeg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 18.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Hello , ',
                                  style: TextStyle(
                                      fontSize: 15.sp, color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Text(
                                  'Mohamed Hany',
                                  style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      const Divider(
                        color: Colors.grey,
                        thickness: 0.3,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      const Lists(
                        page: MyDoctors(),
                        icona: Icon(
                          Icons.person,
                          size: 30,
                          color: Colors.black,
                        ),
                        titles: 'My Doctors',
                        icona2: Icon(
                          Icons.arrow_forward_ios,
                          size: 23,
                          color: Colors.black,
                        ),
                      ),
                      const Lists(
                          page: MedicalRecord(),
                          icona: Icon(
                            Icons.note,
                            size: 30,
                            color: Colors.black,
                          ),
                          titles: 'Medical Records',
                          icona2: Icon(
                            Icons.arrow_forward_ios,
                            size: 23,
                            color: Colors.black,
                          )),
                      const Lists(
                          page: Payment(),
                          icona: Icon(
                            Icons.money,
                            size: 30,
                            color: Colors.black,
                          ),
                          titles: 'Payments',
                          icona2: Icon(
                            Icons.arrow_forward_ios,
                            size: 23,
                            color: Colors.black,
                          )),
                      const Lists(
                          page: Setting(),
                          icona: Icon(
                            Icons.settings,
                            size: 30,
                            color: Colors.black,
                          ),
                          titles: 'Settings',
                          icona2: Icon(
                            Icons.arrow_forward_ios,
                            size: 23,
                            color: Colors.black,
                          )),
                      const Lists(
                        icona: Icon(
                          Icons.logout,
                          size: 30,
                          color: Colors.black,
                        ),
                        titles: 'Log out',
                      ),
                    ]),
              ),
            ),
            //end of drawer

            body: const TabBarView(
              children: [Home1(), Booking(), Chat()],
            )));
  }
}

class Lists extends StatelessWidget {
  final Icon icona;
  final String titles;
  final Icon? icona2;
  final Widget? page;
  const Lists(
      {super.key,
      required this.icona,
      required this.titles,
      this.icona2,
      this.page});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 13.0).w,
      child: ListTile(
          onTap: () {
            if (page != null) {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return page!;
              }));
            } else {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => const MainPage()),
                  (route) => false);
            }
          },
          leading: icona,
          title: Text(
            titles,
            style: TextStyle(fontSize: 17.sp),
          ),
          trailing: icona2),
    );
  }
}
