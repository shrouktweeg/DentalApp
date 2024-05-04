import 'package:flutter/material.dart';
import 'package:flutter_application_1/chatscreen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  final List imgs = [
    'doctor3.jpg',
    'doctora.jpg',
    'doctor.jpg',
    'doctor2.jpg',
    'doctora2.jpg',
    'doctor3.jpg'
  ];
  final List names = [
    'Dr : Tarek Tweeg',
    'Dr : Basma Ahmed',
    'Dr : Mohamed Tawfik',
    'Dr : Yahia Mohamed',
    'Dr : Khadija Mohamed ',
    'Dr : Ahmed Abed'
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 12, right: 15).w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Card(
              color: const Color.fromARGB(255, 221, 218, 218),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10).w,
              ),
              elevation: 0.5,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8).r,
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search',
                    suffixIcon: Icon(Icons.search),
                    suffixIconColor: Color(0xff65C7FF),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 18.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20).r,
              child: Text(
                'Active Now',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            SizedBox(
              height: 70.h,
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 20.w,
                  );
                },
                itemBuilder: (context, index) {
                  return Container(
                    width: 65.w,
                    height: 65.h,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              spreadRadius: 2,
                              blurRadius: 10)
                        ]),
                    child: Stack(alignment: Alignment.topRight, children: [
                      Center(
                        child: SizedBox(
                            width: 70.w,
                            height: 70.h,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset(
                                'assets/${imgs[index]}',
                                fit: BoxFit.cover,
                              ),
                            )),
                      ),
                      Container(
                        width: 16.w,
                        height: 16.h,
                        decoration: const BoxDecoration(
                            color: Colors.green, shape: BoxShape.circle),
                      )
                    ]),
                  );
                },
                itemCount: imgs.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20).r,
              child: Text(
                'Recent Chat',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10.0).w,
                    child: ListTile(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const ChatScreen();
                        }));
                      },
                      title: Text(
                        names[index],
                        style: TextStyle(
                            fontSize: 18.sp, fontWeight: FontWeight.bold),
                      ),
                      leading: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('assets/${imgs[index]}')),
                      subtitle: Text(
                        'Hello , Doctor are you there ? ',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style:
                            TextStyle(fontSize: 16.sp, color: Colors.black54),
                      ),
                      trailing: Text(
                        '12:30',
                        style:
                            TextStyle(fontSize: 15.sp, color: Colors.black54),
                      ),
                    ),
                  );
                },
                itemCount: imgs.length)
          ],
        ),
      ),
    );
  }
}
