import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:thibaudbdx_app/constants/text_font_style.dart';
import 'package:thibaudbdx_app/gen/assets.gen.dart';
import 'package:thibaudbdx_app/gen/colors.gen.dart';
import 'package:thibaudbdx_app/helpers/ui_helpers.dart';




class MeetingDetailseScreen extends StatefulWidget {
  const MeetingDetailseScreen({super.key});

  @override
  State<MeetingDetailseScreen> createState() => _MeetingDetailseScreenState();
}

class _MeetingDetailseScreenState extends State<MeetingDetailseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
              child: Row(
                children: [
                  SvgPicture.asset(Assets.icons.arrowtir),
                  UIHelper.horizontalSpace(85.w),
                     Text('Task Details',
                style: TextFontStyle.headline24cFFFFFFpoppinsw600),
                ],
              ),
            ),
            UIHelper.verticalSpace(30.h),
            Expanded(

              child: Container(
                height: 300,
                decoration:  BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30.r)),
                ),
                padding: EdgeInsets.all(24.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UIHelper.verticalSpace(47.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Task Name',
                          style: TextFontStyle.headline14c262525poppinsw500
                        ),
                        Text(
                          '4th March   2:40pm',
                            style:  TextFontStyle.headline14c848585poppinsw400.copyWith(fontSize: 10.sp)
                        ),
                      ],
                    ),
                   UIHelper.verticalSpace(30.h),
                    Text(
                      'Description',
                        style: TextFontStyle.headline14c262525poppinsw500
                    ),
                    UIHelper.verticalSpace(5.h),
                    Expanded(
                      flex: 3,
                      child: SingleChildScrollView(
                        child: Text(
                          'Lorem ipsum dolor sit amet consectetur. Dui malesuada suscipit '
                              'eu lobortis ac amet quisque praesent ac. Tempor et tristique adipiscing '
                              'enim. Risus ac neque convallis mauris. Eu risus dui commodo dignissim '
                              'lorem elementum penatibus libero.\n\n'
                              'Lorem ipsum dolor sit amet consectetur. Dui malesuada suscipit '
                              'eu lobortis ac amet quisque praesent ac. Tempor et tristique adipiscing '
                              'enim. Risus ac neque convallis mauris. Eu risus dui commodo dignissim '
                              'lorem elementum penatibus libero.\n\n'
                              'Lorem ipsum dolor sit amet consectetur. Dui malesuada suscipit '
                              'eu lobortis ac amet quisque praesent ac. Tempor et tristique adipiscing '
                              'enim. Risus ac neque convallis mauris. Eu risus dui commodo dignissim '
                              'lorem elementum penatibus libero.',
                          style:  TextFontStyle.headline14c848585poppinsw400.copyWith(fontSize: 10.sp)
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),

          ],
        ),
      ),

    );
  }
}
