import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:uitask/listview_items/my_investment_listview.dart';
import 'package:uitask/utils/colors_utils.dart';

class MyInvestmentPage extends StatefulWidget {
  const MyInvestmentPage({Key? key}) : super(key: key);

  @override
  State<MyInvestmentPage> createState() => _MyInvestmentPageState();
}

class _MyInvestmentPageState extends State<MyInvestmentPage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back)),
          elevation: 0,
          backgroundColor: Colors.yellow,
          centerTitle: true,
          title: Text("My Investment", style: TextStyle(color: blackColor)),
          bottom: TabBar(
              indicatorColor: blackColor,
              labelColor: blackColor,
              labelPadding: const EdgeInsets.all(2),
              indicatorWeight: 3,
              indicatorPadding: const EdgeInsets.symmetric(horizontal: 20),
              tabs: const [
                Tab(
                  child: Text(
                    "Mutual Funds",
                    overflow: TextOverflow.clip,
                  ),
                ),
                Tab(
                  child: Text(
                    "FD",
                    overflow: TextOverflow.clip,
                  ),
                ),
                Tab(
                  child: Text(
                    "Investment",
                    overflow: TextOverflow.clip,
                  ),
                ),
                Tab(
                  child: Text(
                    "SIP",
                    overflow: TextOverflow.clip,
                  ),
                ),
              ]),
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
                const MyInvestmentListView(),
                MyInvestmentListView(
                  current: '₹ 4.58K',
                  fundName: 'ICIC Prudential Mutual',
                  investment: '₹ 5.57K',
                  textColor: redColor,
                ),
                MyInvestmentListView(
                  current: '₹ 5.57K',
                  fundName: 'Kotak Flexicap Fund',
                  investment: '₹ 4.58K',
                  textColor: redColor,
                  equity: 'Equity Small Cap',
                ),
                const MyInvestmentListView(
                  current: '₹ 7.82',
                  fundName: 'Quant Tax Plan Direct Growth',
                  investment: '₹ 8.65K',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
