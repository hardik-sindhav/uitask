import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';
import 'package:uitask/utils/colors_utils.dart';

class MyInvestmentListView extends StatelessWidget {
  final String? fundName;
  final String? equity;
  final String? pl;
  final String? xirr;
  final String? investment;
  final String? current;
  final Color? textColor;
  const MyInvestmentListView(
      {Key? key,
      this.fundName,
      this.equity,
      this.pl,
      this.xirr,
      this.investment,
      this.current,
      this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15.h,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 2.h, vertical: 1.h),
      decoration: BoxDecoration(
        border: Border.all(color: yellowColor),
        color: yellowShadeColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.h),
        child: Column(
          children: [
            SizedBox(
              height: 2.h,
            ),
            Row(
              children: [
                Text(
                  fundName ?? "Axis Long Term Equity fund",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: blackColor,
                      fontSize: 13.sp),
                ),
                const Spacer(),
                Text(
                  "P&L  ",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: grayColor,
                      fontSize: 10.sp),
                ),
                Text(
                  pl ?? "₹ 155",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: textColor ?? CupertinoColors.activeGreen,
                      fontSize: 11.sp),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  equity ?? "Equity ELSS",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: grayColor,
                      fontSize: 10.sp),
                ),
                const Spacer(),
                Text(
                  "XIRR  ",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: grayColor,
                      fontSize: 10.sp),
                ),
                Text(
                  xirr ?? "11.94%",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: textColor ?? CupertinoColors.activeGreen,
                      fontSize: 12.sp),
                ),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                Text(
                  "Investment  ",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: grayColor,
                      fontSize: 10.sp),
                ),
                Text(
                  investment ?? "₹ 7.82K",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: blackColor,
                      fontSize: 13.sp),
                ),
                const Spacer(),
                Text(
                  "Current  ",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: grayColor,
                      fontSize: 10.sp),
                ),
                Text(
                  current ?? "₹ 8.65K",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: blackColor,
                      fontSize: 13.sp),
                ),
              ],
            ),
            SizedBox(
              height: 1.h,
            ),
          ],
        ),
      ),
    );
  }
}
