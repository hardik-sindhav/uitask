import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:uitask/utils/colors_utils.dart';

class TopRankingFundsListView extends StatelessWidget {
  final String? bank;
  final String? percentage;
  final String? equity;
  final String? returns;
  final String? logo;
  final Color? bgColor;
  const TopRankingFundsListView({Key? key, this.bank, this.percentage, this.equity, this.returns, this.logo, this.bgColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(left: 2.h,right: 2.h,bottom: 2.5.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            alignment: Alignment.center,
            height: 5.h,
            width: 5.h,
            decoration:
                 BoxDecoration(shape: BoxShape.circle, color: bgColor??Colors.purple),
            child:  Text(
              logo??'A',
              style:  TextStyle(
                color: Colors.white,
                fontSize: 20.sp,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      bank??"Axis Long Term Equity fund",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: blackColor),
                    ),
                    Text(
                      equity??"Equity ELSS",
                      style: TextStyle(fontSize: 10.sp, color: grayColor),
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      percentage??"37.55%",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: blackColor),
                    ),
                    Text(
                      returns??"3Y Return",
                      style: TextStyle(fontSize: 10.sp, color: grayColor),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
