import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ChatScreen extends StatelessWidget {
  const ChatScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 5.0),
              child: CircleAvatar(
                  radius: 20, backgroundImage: AssetImage('assets/doctor.jpg')),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10).r,
              child: const Text(
                'Doctor Name',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 15).r,
            child: const Icon(
              Icons.call,
              color: Colors.white,
              size: 26,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 10).r,
            child: const Icon(
              Icons.video_call,
              color: Colors.white,
              size: 28,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 10).r,
            child: const Icon(
              Icons.more_vert,
              color: Colors.white,
              size: 26,
            ),
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 80.0).r,
                  child: ClipPath(
                    clipper: UpperNipMessageClipper(MessageType.RECEIVE),
                    child: Container(
                      padding: const EdgeInsets.all(20).w,
                      decoration: const BoxDecoration(color: Color(0XFFE1E1E2)),
                      child: Text(
                        'Hello , what i can do for you , you can book appointment directly',
                        style: TextStyle(fontSize: 16.sp),
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 80).r,
                    child: ClipPath(
                      clipper: LowerNipMessageClipper(MessageType.SEND),
                      child: Container(
                        padding: const EdgeInsets.only(
                                left: 20, top: 10, bottom: 25, right: 20)
                            .w,
                        decoration: const BoxDecoration(
                          color: Color(0xff65C7FF),
                        ),
                        child: Text(
                          'Hello, Doctor are you there ? ',
                          style:
                              TextStyle(color: Colors.white, fontSize: 16.sp),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            );
          }),
      bottomSheet: Container(
        height: 65.h,
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(color: Colors.black12, spreadRadius: 2, blurRadius: 10)
        ]),
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 8),
              child: Icon(
                Icons.add,
                size: 30,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 5),
              child: Icon(
                Icons.emoji_emotions_outlined,
                color: Colors.amber,
                size: 30,
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 10).r,
                child: Container(
                  alignment: Alignment.centerRight,
                  width: MediaQuery.of(context).size.width / 1.6.w,
                  child: TextFormField(
                    decoration: const InputDecoration(
                        hintText: 'Type something ...',
                        border: InputBorder.none),
                  ),
                )),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 10).r,
              child: const Icon(
                Icons.send,
                size: 30,
                color: Color(0xff65C7FF),
              ),
            )
          ],
        ),
      ),
    );
  }
}
