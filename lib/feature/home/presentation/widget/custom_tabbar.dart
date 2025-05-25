// custom_overview_content.dart
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thibaudbdx_app/constants/text_font_style.dart';
import 'package:thibaudbdx_app/gen/assets.gen.dart';
import 'package:thibaudbdx_app/gen/colors.gen.dart';
import 'package:thibaudbdx_app/helpers/ui_helpers.dart';


class CustomOverviewContent extends StatelessWidget {
  final String? text;
  final String? texttwo;
  const CustomOverviewContent({super.key, this.text, this.texttwo});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10.h),
        Text(
          text!,
          style: TextFontStyle.headline20c202123poppinsw400,
        ),
        SizedBox(height: 6.h),
        Row(
          children: [
            Text(texttwo!, style: TextFontStyle.headline14c707579poppinsw400),
            UIHelper.horizontalSpace(4.w),
            RatingBar.builder(
              initialRating: 4.3,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 16.sp,
              itemPadding: EdgeInsets.symmetric(horizontal: 2.0.w),
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print('Rated: $rating');
              },
            ),
            UIHelper.horizontalSpace(4.w),
            Text(' (59) • ', style: TextFontStyle.headline14c707579poppinsw400),
            UIHelper.horizontalSpace(6.w),
            SvgPicture.asset(Assets.icons.noteicon),
            UIHelper.horizontalSpace(6.w),
            SvgPicture.asset(Assets.icons.men),
            UIHelper.horizontalSpace(4.w),
            Text(' 2 min', style: TextFontStyle.headline14c707579poppinsw400),
          ],
        ),
        SizedBox(height: 4.h),
        Text('Pizzeria • 1-100 kr •',
            style: TextFontStyle.headline14c707579poppinsw400),
        SizedBox(height: 4.h),
        Row(
          children: [
            Text('Open • ',
                style: TextFontStyle.headline14c707579poppinsw400
                    .copyWith(color: AppColors.c34A853)),
            Text(' Closes 21:00',
                style: TextFontStyle.headline14c707579poppinsw400),
          ],
        ),
        UIHelper.verticalSpace(29.h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.r),
              child: Image.asset(
                Assets.images.piza.path,
                width: 256,
              ),
            ),
            SizedBox(width: 8.w),
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: Image.asset(
                    Assets.images.piza2.path,
                    height: 138.h,
                  ),
                ),
                UIHelper.verticalSpace(8.h),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: Image.asset(
                    Assets.images.piza2.path,
                    height: 138.h,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
