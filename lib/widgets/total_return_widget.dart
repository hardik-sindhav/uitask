import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../utils/colors_utils.dart';

class TotalReturnWidget extends StatelessWidget {
  const TotalReturnWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 2.h, vertical: 2.h),
        height: 23.h,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 3.0,
              spreadRadius: 2.0,
            ),
          ],
          border: Border.all(color: yellowColor),
        ),
        child: Stack(
          children: [
            Positioned(
                top: 2.h,
                left: 4.h,
                child: Text(
                  "Total Return",
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: blackColor),
                )),
            Positioned(
                top: 5.h,
                left: 4.h,
                child: Row(
                  children: [
                    Text(
                      "₹-8.3K",
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.red),
                    ),
                    SizedBox(
                      width: 1.h,
                    ),
                    Text(
                      "(-14.22%)",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.red),
                    )
                  ],
                )),
            Positioned(
                top: 2.h,
                right: 4.h,
                child: SvgPicture.asset(
                  "assets/images/arrow_right_yellow.svg",
                  height: 6.h,
                )),
            Positioned(
                top: 4.h,
                right: 6.5.h,
                child: SvgPicture.asset("assets/images/arrow_right.svg")),
            Positioned(
                top: 11.h,
                right: 4.h,
                left: 4.h,
                child: Container(
                  height: 0.5,
                  color: grayColor,
                )),
            Positioned(
                top: 13.h,
                left: 4.h,
                child: SvgPicture.asset(
                  "assets/images/rupee.svg",
                  height: 8.h,
                )),
            Positioned(
                top: 14.65.h,
                left: 9.h,
                child: Column(
                  children: [
                    Text(
                      "Invested",
                      style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.normal,
                          color: grayColor),
                    ),
                    Text(
                      "29.33K",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: darkBlackColor),
                    )
                  ],
                )),
            Positioned(
                top: 13.h,
                left: 22.h,
                child: SvgPicture.asset(
                  "assets/images/rupee.svg",
                  height: 8.h,
                )),
            Positioned(
                top: 14.65.h,
                left: 27.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Current",
                      style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.normal,
                          color: grayColor),
                    ),
                    Text(
                      "25.56K",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: darkBlackColor),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
