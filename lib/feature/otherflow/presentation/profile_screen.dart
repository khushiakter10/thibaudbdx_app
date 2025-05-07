import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:thibaudbdx_app/constants/text_font_style.dart';
import 'package:thibaudbdx_app/gen/colors.gen.dart';
import 'package:thibaudbdx_app/helpers/ui_helpers.dart';


class MoreProfileScreen extends StatefulWidget {
  const MoreProfileScreen({super.key});

  @override
  State<MoreProfileScreen> createState() => _MoreProfileScreenState();
}

class _MoreProfileScreenState extends State<MoreProfileScreen> {
  final List<String> image = [
    'assets/images/product.png',
    'assets/images/docs.png',
    'assets/images/map.png',
    'assets/images/togs.png',
    'assets/images/dataimport.png',
    'assets/images/subscription.png',
    'assets/images/faq.png',
    'assets/images/support.png',
    'assets/images/setting.png',
  ];

  final List<String> text = [
    'Product',
    'Docs',
    'Map',
    'Tags',
    'Data Import/ Export',
    'Subscription',
    'Faq',
    'Support',
    'Settings',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cF6F6F6,
      appBar: AppBar(
        toolbarHeight: 50.h,
        backgroundColor: AppColors.cF6F6F6,
        elevation: 0,
        automaticallyImplyLeading: false,
        scrolledUnderElevation: 0,
        leading: Transform.scale(
          scale: 1.1,
          child: const Icon(Icons.close_sharp, color: Colors.black),
        ),
        actions: [
          Icon(Icons.edit, color: Colors.grey.shade300, size: 30.h),
          UIHelper.horizontalSpace(22.w),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 30.h),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 60.h, bottom: 20.h),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.cF9F9F9,
                    borderRadius: BorderRadius.circular(22.r),
                  ),
                  child: Column(
                    children: [
                      UIHelper.verticalSpace(30.h),
                      Text(
                        'Dila adiha sani',
                        textAlign: TextAlign.center,
                        style: TextFontStyle.headline14c848585poppinsw400.copyWith(
                          color: AppColors.c484848,
                        ),
                      ),
                      UIHelper.verticalSpace(5.h),
                      Text(
                        'Sales Person',
                        textAlign: TextAlign.center,
                        style: TextFontStyle.text14c011510OutfitRegular.copyWith(
                          color: AppColors.c848585,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: -33,
                  left: 130,
                  child: CircleAvatar(
                    radius: 60.r,
                    backgroundColor: Colors.transparent,
                    child: ClipOval(
                      child: CachedNetworkImage(
                        imageUrl:
                        'https://a.storyblok.com/f/191576/1200x800/215e59568f/round_profil_picture_after_.webp',
                        fit: BoxFit.cover,
                        width: 110.r,
                        height: 110.r,
                        placeholder: (context, url) => Shimmer.fromColors(
                          baseColor: Colors.grey.shade400,
                          highlightColor: Colors.grey.shade300,
                          child: Container(
                            width: 110.r,
                            height: 110.r,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                      ),
                    ),
                  ),
                )
              ],
            ),
            UIHelper.verticalSpace(24.h),
            ListView.separated(
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: text.length,
              separatorBuilder: (context, index) =>
                  UIHelper.verticalSpace(10.h),
              itemBuilder: (context, index) {
                return Container(
                  padding:
                  EdgeInsets.symmetric(vertical: 15.h, horizontal: 12.w),
                  decoration: BoxDecoration(
                    color: AppColors.cF9F9F9,
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: Row(
                    children: [
                      Image.asset(image[index], height: 24.h),
                      UIHelper.horizontalSpace(12.w),
                      Text(
                        text[index],
                        style: TextFontStyle.headline14c484848poppinsw400
                            .copyWith(fontSize: 16.sp),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
