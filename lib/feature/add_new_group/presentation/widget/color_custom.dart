import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thibaudbdx_app/constants/text_font_style.dart';
import 'package:thibaudbdx_app/gen/colors.gen.dart';
import 'package:thibaudbdx_app/helpers/ui_helpers.dart';


class ColorCustom extends StatelessWidget {
  final List<String> colorList;
  const ColorCustom({
    super.key,
    required this.colorList,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
      EdgeInsets.symmetric(vertical: 6.h, horizontal: 12.w),
      decoration: BoxDecoration(
        color: AppColors.cF2F2F7,
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: SizedBox(
        height: 45.h,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colorList.length,
          itemBuilder: (context, index) {
            final hex = colorList[index];
            final color = Color(
              int.parse(hex.replaceFirst('#', '0xff')),
            );

            return Container(
              margin: EdgeInsets.only(right: 9.w),
              padding: EdgeInsets.symmetric(
                  vertical: 6.h, horizontal: 12.w),
              decoration: BoxDecoration(
                color: AppColors.c2C2C2E,
                borderRadius: BorderRadius.circular(3.6.r),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: 11.r,
                    backgroundColor: color,
                  ),
                  UIHelper.verticalSpace(3.h),
                  Text(
                    hex.replaceFirst('#', ''),
                    style: TextFontStyle.headline12cFFFFFFpoppinsw400
                        .copyWith(fontSize: 5.sp),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
