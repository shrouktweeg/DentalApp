import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  int type = 0;
  void handleRadio(Object? e) => setState(() {
        type = e as int;
      });
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff65C7FF),
        title: const Text('Payment Methods'),
        elevation: 0,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20).w,
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 40.h,
              ),
              Container(
                margin: const EdgeInsets.only(right: 10).r,
                width: size.width,
                height: 55.w,
                decoration: BoxDecoration(
                    border: type == 1
                        ? Border.all(width: 1, color: const Color(0XFFDB3022))
                        : Border.all(width: 0.3, color: Colors.grey),
                    borderRadius: BorderRadius.circular(5).w,
                    color: Colors.transparent),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20.0).r,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Radio(
                              value: 1,
                              groupValue: type,
                              onChanged: handleRadio,
                              activeColor: const Color(0XFFDB3022),
                            ),
                            Text(
                              'Master Card',
                              style: type == 1
                                  ? TextStyle(
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black)
                                  : TextStyle(
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                            ),
                          ],
                        ),
                        Image.asset(
                          'assets/master-card.png',
                          width: 63.w,
                          fit: BoxFit.cover,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                margin: const EdgeInsets.only(right: 10).r,
                width: size.width,
                height: 55.h,
                decoration: BoxDecoration(
                    border: type == 2
                        ? Border.all(width: 1, color: const Color(0XFFDB3022))
                        : Border.all(width: 0.3, color: Colors.grey),
                    borderRadius: BorderRadius.circular(5).w,
                    color: Colors.transparent),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20.0).r,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Radio(
                              value: 2,
                              groupValue: type,
                              onChanged: handleRadio,
                              activeColor: const Color(0XFFDB3022),
                            ),
                            Text(
                              'Google pay',
                              style: type == 2
                                  ? TextStyle(
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black)
                                  : TextStyle(
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                            ),
                          ],
                        ),
                        Image.asset(
                          'assets/gpay.png',
                          width: 63.w,
                          fit: BoxFit.cover,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                margin: const EdgeInsets.only(right: 10).r,
                width: size.width,
                height: 55.h,
                decoration: BoxDecoration(
                    border: type == 3
                        ? Border.all(width: 1.w, color: const Color(0XFFDB3022))
                        : Border.all(width: 0.3.w, color: Colors.grey),
                    borderRadius: BorderRadius.circular(5).w,
                    color: Colors.transparent),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20.0).w,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Radio(
                              value: 3,
                              groupValue: type,
                              onChanged: handleRadio,
                              activeColor: const Color(0XFFDB3022),
                            ),
                            Text(
                              'Visa',
                              style: type == 3
                                  ? TextStyle(
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black)
                                  : TextStyle(
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                            ),
                          ],
                        ),
                        Image.asset(
                          'assets/visa.png',
                          width: 63.w,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                margin: const EdgeInsets.only(right: 10).r,
                width: size.width,
                height: 55.h,
                decoration: BoxDecoration(
                    border: type == 4
                        ? Border.all(width: 1.w, color: const Color(0XFFDB3022))
                        : Border.all(width: 0.3.w, color: Colors.grey),
                    borderRadius: BorderRadius.circular(5).w,
                    color: Colors.transparent),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20.0).w,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Radio(
                              value: 4,
                              groupValue: type,
                              onChanged: handleRadio,
                              activeColor: const Color(0XFFDB3022),
                            ),
                            Text(
                              'Paypal',
                              style: type == 4
                                  ? TextStyle(
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black)
                                  : TextStyle(
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                            ),
                          ],
                        ),
                        Image.asset(
                          'assets/paypal.png',
                          width: 70.w,
                          fit: BoxFit.cover,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 60.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sub-Total',
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                  ),
                  Text(
                    '\$300.00',
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Discount',
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                  ),
                  Text(
                    '\$0.00',
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              Divider(
                height: 30.h,
                color: Colors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Payment',
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                  ),
                  Text(
                    '\$300.00',
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff65C7FF)),
                  )
                ],
              ),
              SizedBox(
                height: 60.h,
              ),
              MaterialButton(
                onPressed: () {},
                color: const Color(0xff65C7FF),
                minWidth: size.width,
                height: 47.h,
                child: Text(
                  'Confirm Payment',
                  style: TextStyle(color: Colors.white, fontSize: 20.sp),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
