import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thibaudbdx_app/common_widget/custom_createtag_widget.dart';
import 'package:thibaudbdx_app/common_widget/custom_text_formfield_widget.dart';
import 'package:thibaudbdx_app/constants/text_font_style.dart';
import 'package:thibaudbdx_app/feature/home/presentation/widget/color_custom.dart';
import 'package:thibaudbdx_app/gen/assets.gen.dart';
import 'package:thibaudbdx_app/gen/colors.gen.dart';
import 'package:thibaudbdx_app/helpers/ui_helpers.dart';

class NewTagScreen extends StatefulWidget {
  const NewTagScreen({super.key});

  @override
  State<NewTagScreen> createState() => _NewTagScreenState();
}

class _NewTagScreenState extends State<NewTagScreen> {
  final List<String> colorList = [
    '#039BE5',
    '#00ACC1',
    '#26A69A',
    '#8BC34A',
    '#FF7043',
    '#BA68C8',
    '#FFA726',
    '#EF5350',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      appBar: AppBar(
        toolbarHeight: 80.h,
        backgroundColor: AppColors.c5F57FF,
        leading: Padding(
          padding: EdgeInsets.only(left: 30.w),
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Transform.scale(
              scale: 1,
              child: SvgPicture.asset(Assets.icons.arrowtir),
            ),
          ),
        ),
        title: Text(
          'New Tag',
          style: TextFontStyle.headline24cFFFFFFpoppinsw700,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UIHelper.verticalSpace(30.h),

            // Tag Details Section
            Text(
              'Tag Details',
              style: TextFontStyle.headline16c484848poppinsw500,
            ),
            UIHelper.verticalSpace(24.h),

            // Tag Name Input
            Text(
              'Tag name',
              style: TextFontStyle.headline14c848585poppinsw400,
            ),
            UIHelper.verticalSpace(8.h),
            CustomTextFormFieldWidget(
              contentPadding:
              EdgeInsets.symmetric(vertical: 10.h, horizontal: 12.w),
              borderRadius: BorderRadius.circular(16.r),
              borderSide: const BorderSide(color: AppColors.cE3E3E3, width: 1),
              fillColor: AppColors.cF9F9F9,
              filled: true,
              hintTxt: 'Restaurant',
              hinStyle: TextFontStyle.headline14c484848poppinsw400,
            ),
            UIHelper.verticalSpace(24.h),

            // Color Selector
            Text(
              'Color',
              style: TextFontStyle.headline14c848585poppinsw400,
            ),
            UIHelper.verticalSpace(8.h),
            CustomTextFormFieldWidget(
              contentPadding:
              EdgeInsets.symmetric(vertical: 10.h, horizontal: 12.w),
              borderRadius: BorderRadius.circular(16.r),
              borderSide: const BorderSide(color: AppColors.cE3E3E3, width: 1),
              fillColor: AppColors.cF9F9F9,
              filled: true,
              hintTxt: 'Select color',
              hinStyle: TextFontStyle.headline14c484848poppinsw400,
              suffixIcon: Transform.scale(
                scale: 0.90,
                child: Image.asset(
                  Assets.images.profile.path,
                  height: 24.h,
                ),
              ),
            ),
            UIHelper.verticalSpace(24.h),

            // Color Picker Widget
            ColorCustom(colorList: colorList),
            UIHelper.verticalSpace(50.h),

            // Tag Preview Badge
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 42.w),
                decoration: BoxDecoration(
                  color: AppColors.c0D6E3E,
                  borderRadius: BorderRadius.circular(31.r),
                ),
                child: Text(
                  'Restaurant',
                  style: TextFontStyle.headline12cFFFFFFpoppinsw400.copyWith(
                    fontSize: 16.sp,
                  ),
                ),
              ),
            ),
            UIHelper.verticalSpace(90.h),

            // Create Tag Button
            CustomCreatTag(
              padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 117.w),
              text: 'Restaurant',
            ),
          ],
        ),
      ),
    );
  }
}
