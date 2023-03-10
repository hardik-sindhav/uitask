import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:uitask/utils/colors_utils.dart';

class CustomBannerWidget extends StatelessWidget {
  final VoidCallback? voidCallback;
  const CustomBannerWidget({Key? key, this.voidCallback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.symmetric(horizontal: 2.h),
      height: 8.h,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: yellowColor,
      ),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 2.h, bottom: 2.h),
            child: Text(
              "Bajaj Finance hikes FD rates",
              style: TextStyle(
                  color: darkBlackColor,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 2.h, top: 3.h),
            child: Text("3Y BM FD at 7.2% p.a Check all rates",
                style: TextStyle(color: blackColor, fontSize: 10.sp
                )),
          ),
          Positioned(
            right: 4.h,
            bottom: 0,
            child: SvgPicture.asset(
              'assets/images/money_bag.svg',
              height: 7.h,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Positioned(
            right: 1.h,
            top: 1.h,
            child: GestureDetector(
              onTap: voidCallback,
              child: SvgPicture.asset(
                'assets/images/close.svg',
                allowDrawingOutsideViewBox: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
