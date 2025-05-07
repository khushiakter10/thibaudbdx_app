import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:thibaudbdx_app/constants/text_font_style.dart';
import 'package:thibaudbdx_app/feature/home/presentation/widget/create_voice_custom_widget.dart';
import 'package:thibaudbdx_app/gen/assets.gen.dart';
import 'package:thibaudbdx_app/gen/colors.gen.dart';
import 'package:thibaudbdx_app/helpers/ui_helpers.dart';

class CreateVoiceNoteScreen extends StatefulWidget {
  const CreateVoiceNoteScreen({super.key});

  @override
  State<CreateVoiceNoteScreen> createState() => _CreateVoiceNoteScreenState();
}

class _CreateVoiceNoteScreenState extends State<CreateVoiceNoteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      appBar: AppBar(
        toolbarHeight: 80.h,
        backgroundColor: AppColors.c5F57FF,
        leading: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: GestureDetector(
            child: Transform.scale(
                scale: 2, child: SvgPicture.asset(Assets.icons.bacbutton)),
          ),
        ),
        title: Text('Create Task',
            style: TextFontStyle.headline24cFFFFFFpoppinsw600),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UIHelper.verticalSpace(32.h),
            Text('Testing Name',
                style: TextFontStyle.headline14c262525poppinsw500),
            UIHelper.verticalSpace(32.h),
            Text('Note Details',
                style: TextFontStyle.headline14c262525poppinsw500),
            UIHelper.verticalSpace(8.h),
            Text(
                'Lorem ipsum dolor sit amet consectetur. Dui malesuada suscipit eu lobortis ac amet quisque praesent ac. Tempor et tristique adipiscing enim. Risus ac neque convallis mauris. Eu risus dui commodo dignissim lorem elementum penatibus libero.',
                style: TextFontStyle.headline14c848585poppinsw400),
            UIHelper.verticalSpace(32.h),
            Text('Product List',
                style: TextFontStyle.headline14c262525poppinsw500),
            UIHelper.verticalSpace(8.h),

            const CreateVoiceCustomWidget(
              firstname: '1. Product Name ',
              secondname: '1. Product Name ',
            )
          ],
        ),
      ),
    );
  }
}


