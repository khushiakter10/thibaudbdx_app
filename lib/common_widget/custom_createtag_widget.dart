import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thibaudbdx_app/constants/text_font_style.dart';
import 'package:thibaudbdx_app/gen/colors.gen.dart';

class CustomCreatTag extends StatelessWidget {
  final String text;
  final EdgeInsetsGeometry? padding;
  const CustomCreatTag({
    super.key,
    required this.text,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
       padding: padding,
          decoration: BoxDecoration(
            color: AppColors.c5F57FF,
            borderRadius: BorderRadius.circular(14.r),
          ),
          child: Text(
            text,
            style: TextFontStyle.headline12cFFFFFFpoppinsw400
                .copyWith(fontSize: 16.sp),
          ),
        ),
      ],
    );
  }
}
