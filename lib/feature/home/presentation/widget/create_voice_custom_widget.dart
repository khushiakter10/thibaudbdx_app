import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thibaudbdx_app/constants/text_font_style.dart';
import 'package:thibaudbdx_app/gen/colors.gen.dart';
import 'package:thibaudbdx_app/helpers/ui_helpers.dart';


class CreateVoiceCustomWidget extends StatelessWidget {
  final String? firstname;
  final String? secondname;
  const CreateVoiceCustomWidget({
    super.key,
    this.firstname,
    this.secondname,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 11.h),
        decoration: BoxDecoration(
          color: AppColors.cFAFAFA,
          borderRadius: BorderRadius.circular(4.r),
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.cEBF0FF,
                borderRadius: BorderRadius.circular(4.r),
              ),
              padding: EdgeInsets.symmetric(vertical: 11.h, horizontal: 12.w),
              child: Text(
                firstname??'',
                style: TextFontStyle.headline14c484848poppinsw400,
                textAlign: TextAlign.start,
              ),
            ),
            UIHelper.verticalSpace(6.h),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.cEBF0FF,
                borderRadius: BorderRadius.circular(4.r), // Rounded corners
              ),
              padding: EdgeInsets.symmetric(vertical: 11.h, horizontal: 12.w),
              child: Text(
                   secondname??'',
                style: TextFontStyle.headline14c484848poppinsw400,
                textAlign: TextAlign.start,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
