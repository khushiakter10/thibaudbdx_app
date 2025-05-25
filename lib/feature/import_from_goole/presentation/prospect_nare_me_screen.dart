import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thibaudbdx_app/common_widget/custom_createtag_widget.dart';
import 'package:thibaudbdx_app/constants/text_font_style.dart';
import 'package:thibaudbdx_app/feature/import_from_goole/presentation/tabbar_view_screen.dart';
import 'package:thibaudbdx_app/gen/assets.gen.dart';
import 'package:thibaudbdx_app/gen/colors.gen.dart';
import 'package:thibaudbdx_app/helpers/ui_helpers.dart';


class ProspectNareMeScreen extends StatefulWidget {
  const ProspectNareMeScreen({super.key});

  @override
  State<ProspectNareMeScreen> createState() => _ProspectNareMeScreenState();
}

class _ProspectNareMeScreenState extends State<ProspectNareMeScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(

      length: 5,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: SvgPicture.asset(Assets.icons.blucircleavatar),
            ),
          ),
          title: Text(
            'Add Contact',
            style: TextFontStyle.headline20c202123poppinsw400,
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 18.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             UIHelper.verticalSpace(22.h),
              Text(
                'Pizzeria Capricciosa',
                style: TextFontStyle.headline20c202123poppinsw400,
              ),
              UIHelper.verticalSpace(4.h),
              Row(
                children: [
                  Text('4.3',
                      style: TextFontStyle.headline14c707579poppinsw400),
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
                    },
                  ),
                  UIHelper.horizontalSpace(4.w),
                  Text(' (59)',
                      style: TextFontStyle.headline14c707579poppinsw400),
                  UIHelper.horizontalSpace(4.w),
                  SvgPicture.asset(Assets.icons.dot,height: 4.h),
                  UIHelper.horizontalSpace(6.w),
                  SvgPicture.asset(Assets.icons.noteicon),
                  UIHelper.horizontalSpace(6.w),
                  SvgPicture.asset(Assets.icons.men),
                  UIHelper.horizontalSpace(4.w),
                  Text(' 2 min',
                      style: TextFontStyle.headline14c707579poppinsw400),
                ],
              ),
              UIHelper.verticalSpace(4.h),
              Row(
                children: [
                  Text(
                    'Pizzeria ',
                    style: TextFontStyle.headline14c707579poppinsw400,
                  ),
                  UIHelper.horizontalSpace(6.w),
                  SvgPicture.asset(Assets.icons.dot,height: 4.h),
                  UIHelper.horizontalSpace(6.w),
                  Text('1-100 kr',  style: TextFontStyle.headline14c707579poppinsw400),
                  UIHelper.horizontalSpace(6.w),
                  SvgPicture.asset(Assets.icons.dot,height: 4.h),
                  UIHelper.horizontalSpace(6.w),
                  SvgPicture.asset(Assets.icons.pluseicon,height: 16.h),
                ],
              ),
              UIHelper.verticalSpace(4.h),
              Row(
                children: [
                  Text(
                    'Open',
                    style: TextFontStyle.headline14c707579poppinsw400
                        .copyWith(color: AppColors.c34A853),
                  ),
                  UIHelper.horizontalSpace(6.w),
                  SvgPicture.asset(Assets.icons.dot,height: 4.h),
                  UIHelper.horizontalSpace(6.w),
                  Text(
                    ' Closes 21:00',
                    style: TextFontStyle.headline14c707579poppinsw400,
                  ),
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
                        height: 300.h,
                    ),
                  ),
             UIHelper.horizontalSpace(8.w),
                  Expanded(
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.r),
                          child: Image.asset(
                            Assets.images.piza2.path,
                            height: 146.h,
                          ),
                        ),
                        UIHelper.verticalSpace(8.h),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.r),
                          child: Image.asset(
                            Assets.images.piza2.path,
                            height: 146.h,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              UIHelper.verticalSpace(30.h),
              DefaultTabController(
                length: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TabBar(
                      isScrollable: true,
                      labelColor: AppColors.c0B56CF,
                      unselectedLabelColor: AppColors.c5E5E5E,
                      tabs: [
                        Tab(text: "Overview"),
                        Tab(text: "Menu"),
                        Tab(text: "Reviews"),
                        Tab(text: "Photos"),
                        Tab(text: "Updates"),
                      ],
                    ),
                    UIHelper.verticalSpace(22.h),
                    SizedBox(
                      height: 150.h,
                      child: const TabBarView(
                        children: [
                          TabbarViewScreen(),
                          TabbarViewScreen(),
                          TabbarViewScreen(),
                          TabbarViewScreen(),
                          TabbarViewScreen(),
                        ],
                      ),
                    ),
                    UIHelper.verticalSpace(22.h),
                    CustomCreatTag(
                      padding:
                      EdgeInsets.symmetric(vertical: 14.h, horizontal: 54.w),
                      text: 'Import from Google',
                    ),
                   UIHelper.verticalSpace(11.h),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
