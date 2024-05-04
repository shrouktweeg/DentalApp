import 'package:flutter/material.dart';
import 'package:flutter_application_1/doctors.dart';
import 'package:flutter_application_1/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home1 extends StatelessWidget {
  const Home1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18, left: 17, right: 17).w,
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Story From Doctor',
            style: TextStyle(
              fontSize: 20.sp,
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              status(image: 'assets/doctor2.jpg', name: 'Mazen Ali'),
              SizedBox(
                width: 20.w,
              ),
              status(image: 'assets/doctora2.jpg', name: 'Khadija Mohamed'),
              SizedBox(
                width: 20.w,
              ),
              status(image: 'assets/doctor3.jpg', name: 'Ibrahim Taha'),
              SizedBox(
                width: 20.w,
              ),
              status(image: 'assets/doctora.jpg', name: 'Maryam Yassin'),
              SizedBox(
                width: 20.w,
              ),
            ]),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            'Services',
            style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w500),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Servicess(
                        Title: 'Scaling',
                        image: 'assets/scaling.jpg',
                        paragraph:
                            'Scaling is a common dental procedure for patients with gum disease.This is a type of dental cleaning that reaches below the gumline to remove plaque buildup.The process of scaling and root planing the teeth is often referred to as a deep cleaning.This treatment goes beyond the general cleaning that you receive with your regular checkup and annual visit.',
                        appointment: 'Saturday - Tuesday',
                        time: '500 L.E',
                      );
                    }));
                  },
                  child: const Services(
                    colors: Color.fromARGB(159, 236, 236, 142),
                    image: 'assets/1.png',
                    title: 'Scaling',
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Servicess(
                        Title: 'Implants',
                        image: 'assets/implants.jpg',
                        paragraph:
                            'Dental implant surgery is a procedure that replaces tooth roots with metal, screwlike posts and replaces damaged or missing teeth with artificial teeth that look and function much like real ones. Dental implant surgery can offer a welcome alternative to dentures or bridgework that doesn\'t fit well and can offer an option when a lack of natural teeth roots don\'t allow building denture or bridgework tooth replacements.',
                        appointment: 'Sunday - Wednesday',
                        time: '1500 L.E',
                      );
                    }));
                  },
                  child: const Services(
                    colors: Color.fromARGB(139, 127, 206, 252),
                    image: 'assets/2.png',
                    title: 'implants',
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Servicess(
                        Title: 'Whilening',
                        image: 'assets/whilening.jpg',
                        paragraph:
                            'Teeth whitening involves bleaching your teeth to make them lighter. It can\'t make your teeth brilliant white, but it can lighten the existing colour by several shades',
                        appointment: 'Monday - Thursday',
                        time: '300 L.E',
                      );
                    }));
                  },
                  child: const Services(
                    colors: Color.fromARGB(157, 162, 253, 217),
                    image: 'assets/3.png',
                    title: 'Whilening',
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Servicess(
                        Title: 'Sraces',
                        image: 'assets/sraces.jpg',
                        paragraph:
                            'Teeth Braces. Braces can correct a wide range of dental issues, including crooked, gapped, rotated or crowded teeth. There are several types of braces, including traditional metal braces, ceramic braces and clear aligners like Invisalign®. Braces improve your smile\'s health, function and appearance',
                        appointment: 'Friday',
                        time: '3000 L.E',
                      );
                    }));
                  },
                  child: const Services(
                    colors: Color.fromARGB(151, 255, 174, 174),
                    image: 'assets/4.png',
                    title: 'Sraces',
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Row(
            children: [
              Text(
                'Doctors',
                style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w500),
              ),
              const Spacer(),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Doctors();
                    }));
                  },
                  child: const Text(
                    'view all',
                  )),
              SizedBox(
                width: 17.w,
              )
            ],
          ),
          Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 246, 243, 243),
                borderRadius: BorderRadius.all(const Radius.circular(10).w)),
            width: double.infinity.w,
            height: 120.h,
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
                          borderRadius:
                              BorderRadius.all(const Radius.circular(70).w),
                          child: Image.asset(
                            'assets/doctor.jpg',
                            width: 47.w,
                            height: 47.h,
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
                                  'Dr : Tarek Tweeg',
                                  style: TextStyle(
                                      fontSize: 19.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  width: 54.w,
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.favorite_outline))
                              ],
                            ),
                            Text(
                              'Orthodontics -4yrs of exp',
                              style: TextStyle(
                                  fontSize: 15.sp,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600),
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
                          size: 25,
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        Text('9.5',
                            style:
                                TextStyle(color: Colors.grey, fontSize: 15.sp)),
                        SizedBox(
                          width: 19.w,
                        ),
                        const Icon(
                          Icons.timer,
                          color: Colors.grey,
                          size: 20,
                        ),
                        SizedBox(
                          width: 6.w,
                        ),
                        Text('4:00pm - 07:30pm',
                            style:
                                TextStyle(color: Colors.grey, fontSize: 15.sp)),
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
                        Text('Mon-Thr',
                            style:
                                TextStyle(color: Colors.grey, fontSize: 15.sp)),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 246, 243, 243),
                borderRadius: BorderRadius.all(const Radius.circular(10).w)),
            width: double.infinity,
            height: 120.h,
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
                          borderRadius:
                              BorderRadius.all(const Radius.circular(70).w),
                          child: Image.asset(
                            'assets/doctora.jpg',
                            width: 50.w,
                            height: 50.h,
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
                                  'Dr : Sama Alaa   ',
                                  style: TextStyle(
                                      fontSize: 19.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  width: 52.4.w,
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.favorite_outline))
                              ],
                            ),
                            Text(
                              'Endodontist -3yrs of exp',
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
                          size: 25,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text('9',
                            style:
                                TextStyle(color: Colors.grey, fontSize: 17.sp)),
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
                        Text('4:00pm - 07:30pm',
                            style:
                                TextStyle(color: Colors.grey, fontSize: 15.sp)),
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
                        Text('Sun-Mon',
                            style:
                                TextStyle(color: Colors.grey, fontSize: 15.sp)),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}

class Services extends StatelessWidget {
  final Color colors;
  final String image;
  final String title;
  const Services({
    super.key,
    required this.colors,
    required this.image,
    required this.title,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 10.0, right: 10.3571).r,
        child: Container(
          width: 84.w,
          height: 107.h,
          decoration: BoxDecoration(
              color: colors,
              borderRadius: BorderRadius.all(const Radius.circular(18).w)),
          child: Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              Image.asset(
                image,
                width: 50.w,
                height: 50.w,
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                title,
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ));
  }
}

Widget status({required String image, required String name}) {
  return Column(
    children: [
      CircleAvatar(
        backgroundImage: AssetImage(image),
        radius: 30.r,
      ),
      SizedBox(
        height: 15.h,
      ),
      Text(
        name,
        style: TextStyle(
          fontSize: 15.sp,
          color: Colors.grey,
        ),
      )
    ],
  );
}
