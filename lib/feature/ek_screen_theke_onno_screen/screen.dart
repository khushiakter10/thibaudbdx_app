


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ktmtommy_app/assets_helper/app_colors.dart';
import 'package:ktmtommy_app/assets_helper/app_fonts.dart';
import 'package:ktmtommy_app/features/trainer/widget/custom_trainer.dart';
import 'package:ktmtommy_app/helpers/ui_helpers.dart';

class TrainerScreen extends StatefulWidget {
  const TrainerScreen({super.key});

  @override
  State<TrainerScreen> createState() => _TrainerScreenState();
}

class _TrainerScreenState extends State<TrainerScreen> {
  int selectedIndex = -1;
  int selectedCategory = 0; // 0=trainers, 1=neutral, 2=humorous

  final List<Map<String, String>> trainers = [
    {
      'text': 'Chill',
      'title': 'Calm, supportive feedback, relaxed tone',
      'subtitle': '"Lets take it easy but stay consistent!"',
    },
  ];

  final List<Map<String, String>> neutral = [
    {
      'text': 'Standard',
      'title': 'Neutral, instructional and straightforward',
      'subtitle': '"Focus on form and progress steadily."',
    },
  ];

  final List<Map<String, String>> humorous = [
    {
      'text': 'Outrageous Tom',
      'title': 'Over-the-top, humorous, loud, eccentric',
      'subtitle': '"This trainer just tells you what to do - no options, no excuses!"',
    },
  ];

  List<Map<String, String>> get currentList {
    switch (selectedCategory) {
      case 1:
        return neutral;
      case 2:
        return humorous;
      default:
        return trainers;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bacroundColorBlack,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Section
              Text(
                'My Trainer',
                style: TextFontStyle.textStyle24w600cFFFFFFpoppins.copyWith(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              UIHelper.verticalSpace(8.h),
              Text(
                'Choose your training companion to guide and motivate you!',
                style: TextFontStyle.textStyle24w400cA3A3A3poppins.copyWith(
                  fontSize: 14.sp,
                ),
              ),
              UIHelper.verticalSpace(18.h),

              // Category Selector
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildCategoryButton(0, 'Chill'),
                  _buildCategoryButton(1, 'Standard'),
                  _buildCategoryButton(2, 'Humorous'),
                ],
              ),
              UIHelper.verticalSpace(18.h),

              // Trainer List
              Expanded(
                child: ListView.separated(
                  itemCount: currentList.length,
                  separatorBuilder: (context, index) => UIHelper.verticalSpace(18.h),
                  itemBuilder: (context, index) {
                    return CustomTrainer(
                      text: currentList[index]['text']!,
                      title: currentList[index]['title']!,
                      subtitle: currentList[index]['subtitle']!,
                      isSelected: selectedCategory == selectedCategory && selectedIndex == index,
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


  Widget _buildCategoryButton(int categoryIndex, String title) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCategory = categoryIndex;
          selectedIndex = -1; // Reset selection when changing category
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: selectedCategory == categoryIndex
              ? AppColors.c87B842
              : AppColors.c151515,
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(
            color: selectedCategory == categoryIndex
                ? AppColors.cFFFFFF
                : Colors.grey,
            width: 1,
          ),
        ),
        child: Text(
          title,
          style: TextFontStyle.textStyle24w600cFFFFFFpoppins.copyWith(
            fontSize: 14.sp,
            color: selectedCategory == categoryIndex
                ? AppColors.cFFFFFF
                : Colors.grey,
          ),
        ),
      ),
    );
  }
}