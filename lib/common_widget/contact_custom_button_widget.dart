import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thibaudbdx_app/constants/text_font_style.dart';
import 'package:thibaudbdx_app/gen/colors.gen.dart';
import 'package:thibaudbdx_app/helpers/ui_helpers.dart';


class ContactCustomButtonWidget extends StatelessWidget {
  final VoidCallback onTap;
  final String name1;
  final String name2;
  final Color? color;
  final TextStyle? textStyleColor;
  const ContactCustomButtonWidget({
    super.key,
    required this.onTap,
    this.color,
    this.textStyleColor,
    required this.name1,
    required this.name2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 50.w),
          decoration: BoxDecoration(
              color: color ?? AppColors.cF3F2FF,
              borderRadius: BorderRadius.circular(10.r)),
          child: Text(name1, style: TextFontStyle.headline18c5F57FFpoppinsw600),
        ),
        UIHelper.horizontalSpace(12.w),
        Container(
          padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 50.w),
          decoration: BoxDecoration(
              color: color ?? AppColors.c5F57FF,
              borderRadius: BorderRadius.circular(10.r)),
          child: Text(name2, style: TextFontStyle.headline24cFFFFFFpoppinsw600.copyWith(fontSize: 18.sp)),
        ),
      ],
    );
  }
}
