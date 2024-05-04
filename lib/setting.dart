import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0).w,
          child: Column(
            children: [
              ListTile(
                subtitle: Text(
                  'Profile',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500),
                ),
                title: Text(
                  'Mohamed Hany',
                  style:
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
                ),
                leading: SizedBox(
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
              ),
              SizedBox(
                height: 20.h,
              ),
              const Divider(),
              listsTile(
                  icon: const Icon(
                    Icons.person_3,
                    size: 35,
                  ),
                  text: Text(
                    'Profile',
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
                  )),
              SizedBox(height: 15.h),
              listsTile(
                  icon: const Icon(
                    Icons.notifications,
                    size: 35,
                  ),
                  text: Text(
                    'Notifications',
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
                  )),
              SizedBox(height: 15.h),
              listsTile(
                  icon: const Icon(
                    Icons.privacy_tip,
                    size: 35,
                  ),
                  text: Text(
                    'Privacy',
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
                  )),
              SizedBox(height: 15.h),
              listsTile(
                  icon: const Icon(
                    Icons.settings_applications,
                    size: 35,
                  ),
                  text: Text(
                    'General',
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
                  )),
              SizedBox(height: 15.h),
              listsTile(
                  icon: const Icon(
                    Icons.info_outline_rounded,
                    size: 35,
                  ),
                  text: Text(
                    'About Us',
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

Widget listsTile({required Icon icon, required Text text}) {
  return ListTile(
    onTap: () {},
    leading: icon,
    title: text,
    trailing: const Icon(Icons.arrow_forward_ios),
  );
}
