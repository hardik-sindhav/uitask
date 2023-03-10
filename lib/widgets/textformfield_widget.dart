import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../utils/colors_utils.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: grayColor,
      decoration: InputDecoration(
          prefixIconConstraints: BoxConstraints(
            maxHeight: 2.h,
          ),
          prefixIcon: Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.h),
            child: SvgPicture.asset(
              'assets/images/search.svg',
              allowDrawingOutsideViewBox: true,
            ),
          ),
          hintText: "Search 3000+ mutual funds",
          hintStyle: TextStyle(color: grayColor, fontSize: 12.sp),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(2.h),
          ),
          contentPadding: EdgeInsets.zero,
          filled: true,
          fillColor: Colors.white),
    );
  }
}
