import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thibaudbdx_app/common_widget/custom_text_formfield_widget.dart';
import 'package:thibaudbdx_app/constants/text_font_style.dart';
import 'package:thibaudbdx_app/feature/home/presentation/widget/custom_restaurant.dart';
import 'package:thibaudbdx_app/gen/assets.gen.dart';
import 'package:thibaudbdx_app/gen/colors.gen.dart';
import 'package:thibaudbdx_app/helpers/ui_helpers.dart';

class GroupScreen extends StatefulWidget {
  const GroupScreen({super.key});

  @override
  State<GroupScreen> createState() => _GroupScreenState();
}

class _GroupScreenState extends State<GroupScreen> {
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
            onTap: () {
              Navigator.pop(context);
            },
            child: Transform.scale(
              scale: 1,
              child: SvgPicture.asset(Assets.icons.arrowtir),
            ),
          ),
        ),
        title: Text(
          'Tags',
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

            // Search Text Field
            CustomTextFormFieldWidget(
              filled: true,
              fillColor: AppColors.cFFFFFF,
              borderSide: const BorderSide(color: AppColors.c848585, width: 1),
              contentPadding:
              EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
              hintTxt: "Search tags",
              hinStyle: TextFontStyle.headline14c848585poppinsw400,
              suffixIcon: Transform.scale(
                scale: 0.59,
                child: Image.asset(
                  Assets.images.searchNormal.path,
                  height: 16.h,
                ),
              ),
            ),

            UIHelper.verticalSpace(30.h),

            // Custom Tag/Item Widget
            CustomRestaurant(
              title: 'Restaurant',
              image: SvgPicture.asset(Assets.icons.threedot),
            ),
          ],
        ),
      ),

      // Floating Add Button
      floatingActionButton: Container(
        height: 90.h,
        width: 90.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(155.r),
          color: AppColors.cDFE1E7,
        ),
        child: CircleAvatar(
          backgroundColor: AppColors.cF6F8FA,
          child: Image.network(
            'https://itnuthosting.com/wp-content/uploads/2022/04/plus-icon-png-transparent-removebg-preview.png',
            fit: BoxFit.cover,
            height: 70,
            color: AppColors.c5F57FF,
          ),
        ),
      ),
    );
  }
}
