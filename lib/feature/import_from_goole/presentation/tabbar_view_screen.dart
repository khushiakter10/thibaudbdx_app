
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thibaudbdx_app/constants/text_font_style.dart';
import 'package:thibaudbdx_app/gen/assets.gen.dart';
import 'package:thibaudbdx_app/gen/colors.gen.dart';
import 'package:thibaudbdx_app/helpers/ui_helpers.dart';



class TabbarViewScreen extends StatefulWidget {
  const TabbarViewScreen({super.key});

  @override
  State<TabbarViewScreen> createState() => _TabbarViewScreenState();
}

class _TabbarViewScreenState extends State<TabbarViewScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(Assets.icons.noteiconblue,height: 24.h),
                UIHelper.horizontalSpace(32.w),
                Text(
                  'Hours may be incorrect',
                  style: TextFontStyle.headline14cB06000poppinsw400
                      .copyWith(fontSize: 14.sp),
                ),
                UIHelper.horizontalSpace(8.w),
                SvgPicture.asset(Assets.icons.arrwbackkhoyri,height: 16.h,
                )],
            ),
            UIHelper.verticalSpace(16.h),
            UIHelper.customDivider(
              color: AppColors.cDADCE0,
              height: 0.5.h,
            ),
            UIHelper.verticalSpace(16.h),
            Row(
              children: [
                SvgPicture.asset(Assets.icons.mapicon,height: 24.h),
                UIHelper.horizontalSpace(32.w),
                Text(
                  'Lagastigsgatan 65, 287 31\nStromsnasbruk, Sweden',
                  style: TextFontStyle.headline20c202123poppinsw400
                      .copyWith(fontSize: 14.sp),
                ),
              ],
            ),
            UIHelper.verticalSpace(16.h),
            UIHelper.customDivider(
              color: AppColors.cDADCE0,
              height: 0.5.h,
            ),
            UIHelper.verticalSpace(16.h),
            Row(
              children: [
                SvgPicture.asset(Assets.icons.clockiconblue,height: 24.h),
                UIHelper.horizontalSpace(32.w),
                Text(
                  'Open • Closes 21:00',
                  style: TextFontStyle.headline20c202123poppinsw400
                      .copyWith(fontSize: 14.sp),
                ),
                UIHelper.horizontalSpace(8.w),
                SvgPicture.asset(Assets.icons.logoarrwback,height: 16.h,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
