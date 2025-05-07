import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thibaudbdx_app/constants/text_font_style.dart';
import 'package:thibaudbdx_app/gen/colors.gen.dart';


class CustomRestaurant extends StatelessWidget {
  final String title;
  final Widget? image;

  const CustomRestaurant({
    super.key,
    required this.title,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
      decoration: BoxDecoration(
        color: AppColors.cF9F9F9,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: AppColors.cE3E3E3),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
            decoration: BoxDecoration(
              color: AppColors.c0D6E3E,
              borderRadius: BorderRadius.circular(26.r),
            ),
            child: Text(
              title,
              style: TextFontStyle.headline12cFFFFFFpoppinsw400,
            ),
          ),
          if (image != null) image!,
        ],
      ),
    );
  }
}
