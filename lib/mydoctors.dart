import 'package:flutter/material.dart';
import 'package:flutter_application_1/doctors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyDoctors extends StatefulWidget {
  const MyDoctors({super.key});

  @override
  State<MyDoctors> createState() => _MyDoctorsState();
}

class _MyDoctorsState extends State<MyDoctors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            backgroundColor: const Color(0xff65C7FF),
            child: const Icon(Icons.add),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Doctors();
              }));
            }),
        appBar: AppBar(
          backgroundColor: const Color(0xff65C7FF),
          title: const Text('Favourite Doctors'),
          elevation: 0,
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.only(top: 18.0, left: 8, right: 10).w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      const Radius.circular(19).w,
                    ),
                    border: Border.all(color: Colors.black),
                    color: Colors.white),
                height: 50.h,
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20).w,
                    child: const Icon(Icons.search),
                  ),
                  Text(
                    'Search',
                    style: TextStyle(color: Colors.grey, fontSize: 19.sp),
                  ),
                  const Spacer(),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.mic)),
                  SizedBox(
                    width: 17.w,
                  ),
                ]),
              ),
              SizedBox(
                height: 20.h,
              ),
              const ListOfDoctors(
                image: 'assets/doctor.jpg',
                name: 'Dr : Tarek Tweeg',
                specialist: 'Orthodontics -4yrs of exp',
                evaluation: '9.5',
                time: '4:00pm - 07:30pm',
                days: 'Mon-Thr',
              ),
              SizedBox(
                height: 10.h,
              ),
              const ListOfDoctors(
                  image: 'assets/doctor2.jpg',
                  name: 'Dr : Omar Sameh',
                  specialist: 'General Dentist -5yrs of exp',
                  evaluation: '9',
                  time: '08:00am-11:00am',
                  days: 'Sat-Tues'),
              SizedBox(
                height: 10.h,
              ),
              const ListOfDoctors(
                  image: 'assets/doctora2.jpg',
                  name: 'Dr : Shahd Bahaa',
                  specialist: 'Prosthodontist -3yrs of exp',
                  evaluation: '8.5',
                  time: '06:00pm-10:00pm',
                  days: 'Sun-Wed'),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        )));
  }
}

class ListOfDoctors extends StatelessWidget {
  final String image;
  final String name;
  final String specialist;
  final String evaluation;
  final String time;
  final String days;
  const ListOfDoctors(
      {super.key,
      required this.image,
      required this.name,
      required this.specialist,
      required this.evaluation,
      required this.time,
      required this.days});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 246, 243, 243),
          borderRadius: BorderRadius.all(const Radius.circular(10).w)),
      width: double.infinity,
      height: 120.w,
      child: InkWell(
        onTap: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 4.0, left: 6).r,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(const Radius.circular(70).w),
                    child: Image.asset(
                      image,
                      width: 48.w,
                      height: 48.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5.w,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                          top: 5.0, bottom: 7.5, right: 13, left: 16)
                      .w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                                fontSize: 19.sp, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 64.w,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.favorite_sharp,
                                color: Colors.red,
                              ))
                        ],
                      ),
                      Text(
                        specialist,
                        style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.grey,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 6, left: 3).r,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.star,
                    color: Color.fromARGB(255, 240, 222, 64),
                    size: 20,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(evaluation,
                      style: TextStyle(color: Colors.grey, fontSize: 17.sp)),
                  SizedBox(
                    width: 20.w,
                  ),
                  const Icon(
                    Icons.timer,
                    color: Colors.grey,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(time,
                      style: TextStyle(color: Colors.grey, fontSize: 17.sp)),
                  SizedBox(
                    width: 20.w,
                  ),
                  const Icon(
                    Icons.calendar_month,
                    color: Colors.grey,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(days,
                      style: TextStyle(color: Colors.grey, fontSize: 15.sp)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
