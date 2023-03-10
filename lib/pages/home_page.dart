import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:uitask/listview_items/top_ranking_funds_listview.dart';
import 'package:uitask/pages/my_investment_page.dart';
import 'package:uitask/widgets/category_widget.dart';
import 'package:uitask/widgets/total_return_widget.dart';

import '../utils/colors_utils.dart';
import '../widgets/custom_banner_widget.dart';
import '../widgets/textformfield_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isBannerShow = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        backgroundColor: yellowColor,
        elevation: 0,
        actions: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                 SizedBox(
                  width: 3.h,
                ),
                Expanded(
                  child: SizedBox(
                    height: 4.h,
                    child: const TextFormFieldWidget(),
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                Container(
                  padding:  EdgeInsets.all(0.8.h),
                  height: 4.h,
                  width: 4.h,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: SvgPicture.asset(
                    'assets/images/bookmark.svg',
                    allowDrawingOutsideViewBox: true,
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
              ],
            ),
          ),
        ],
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
               SizedBox(
                height: 2.h,
              ),
              Visibility(
                  visible: isBannerShow,
                  child: CustomBannerWidget(
                    voidCallback: () {
                      setState(() {
                        isBannerShow = false;
                      });
                    },
                  )),
              GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder:  (context) => const MyInvestmentPage(),)),
                  child: const TotalReturnWidget()),
              Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding:  EdgeInsets.only(left: 2.h, bottom: 2.h),
                    child: Text(
                      "Category",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: blackColor),
                    ),
                  )),
              const CategoryWidget(),
              Padding(
                padding:
                     EdgeInsets.symmetric(horizontal: 2.h, vertical: 2.h),
                child: Row(
                  children: [
                    Text(
                      "Top Ranking Funds",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: blackColor),
                    ),
                    const Spacer(),
                    Text(
                      "View all",
                      style: TextStyle(fontSize: 12.sp, color: blackColor),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    SvgPicture.asset("assets/images/arrow_right.svg",height: 2.h,),
                  ],
                ),
              ),
              const TopRankingFundsListView(),
              const TopRankingFundsListView(
                logo: "K",
                bgColor: Colors.deepPurple,
                bank: 'Kotak Flexicap Fund',
                percentage: '31.58%',
                equity: 'Equity Small Cap',
              ),
              const TopRankingFundsListView(
                logo: 'I',
                bgColor: Colors.brown,
                bank: 'ICIC Prudential Mutual',
                percentage: '28.34%',
                equity: 'Equity ELSS',
              ),
              const TopRankingFundsListView(
                logo: 'Q',
                bgColor: Colors.orange,
                bank: 'Quant Tax Plan Direct Growth',
                percentage: '20.77%',
                equity: 'Equity ELSS',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
