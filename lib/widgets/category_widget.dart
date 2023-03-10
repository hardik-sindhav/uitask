import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:uitask/utils/colors_utils.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          categoryView(
            bgColor: index == 0 ? yellowColor : yellowShadeColor,
            voidCallback: () {
              setState(() {
                index = 0;
              });
            },
          ),
          categoryView(
              text: "Fixed Deposit",
              bgColor: index == 1 ? yellowColor : yellowShadeColor,
              voidCallback: () {
                setState(() {
                  index = 1;
                });
              },
              image: "assets/images/image2.svg"),
          categoryView(
              text: "Investment",
              bgColor: index == 2 ? yellowColor : yellowShadeColor,
              voidCallback: () {
                setState(() {
                  index = 2;
                });
              },
              image: "assets/images/image3.svg"),
          categoryView(
              text: "5IP",
              bgColor: index == 3 ? yellowColor : yellowShadeColor,
              voidCallback: () {
                setState(() {
                  index = 3;
                });
              },
              image: "assets/images/image4.svg"),
        ],
      ),
    );
  }

  Widget categoryView(
      {text, Color? bgColor, image, VoidCallback? voidCallback}) {
    return Column(
      children: [
        GestureDetector(
          onTap: voidCallback,
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(7),
            margin: const EdgeInsets.only(bottom: 5),
            height: 6.h,
            width: 6.h,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: yellowColor),
                color: bgColor ?? yellowColor),
            child: SvgPicture.asset(image ?? "assets/images/image1.svg"),
          ),
        ),
        Text(
          text ?? "Mutual Funds",
          style: TextStyle(fontSize: 10.sp, color: blackColor),
        )
      ],
    );
  }
}
