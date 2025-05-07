import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:thibaudbdx_app/common_widget/contact_custom_button_widget.dart';
import 'package:thibaudbdx_app/common_widget/custom_text_formfield_widget.dart';
import 'package:thibaudbdx_app/constants/text_font_style.dart';
import 'package:thibaudbdx_app/gen/assets.gen.dart';
import 'package:thibaudbdx_app/gen/colors.gen.dart';
import 'package:thibaudbdx_app/helpers/ui_helpers.dart';



class CreateTaskScreen extends StatefulWidget {
  const CreateTaskScreen({super.key});

  @override
  State<CreateTaskScreen> createState() => _CreateTaskScreenState();
}

class _CreateTaskScreenState extends State<CreateTaskScreen> {
  //////////////////////Calender///////////////////////////////
  final TextEditingController _dateController = TextEditingController();
  DateTime selectedDate = DateTime.now();
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        _dateController.text = "${selectedDate.toLocal()}".split(' ')[0];
      });
    }
  }
/////////////////////////////Calander//////////////////////
  final phoneNumberController = TextEditingController();
  String fullPhoneNumber = '';
  String countryCode = '+1';
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
                scale: 2,
                child: SvgPicture.asset(Assets.icons.bacbutton)),
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
            UIHelper.verticalSpace(24.h),
            Text('Task Name',
                style: TextFontStyle.headline18c3F3B3Bpoppinsw500),
            UIHelper.verticalSpace(8.h),
            const CustomTextFormFieldWidget(
              fillColor: AppColors.cFAFAFA,
              hintTxt: 'Meeting name',
            ),
            UIHelper.verticalSpace(24.h),
            Text('Date', style: TextFontStyle.headline18c3F3B3Bpoppinsw500),
            UIHelper.verticalSpace(8.h),
            CustomTextFormFieldWidget(
              controller: _dateController,
              fillColor: AppColors.cFAFAFA,
              hintTxt: 'Select Date',
              suffixIcon: Transform.scale(
                scale: 0.60,
                child: GestureDetector(
                  onTap: () => _selectDate(context),
                  child: Image.asset(
                    Assets.images.calendar.path,
                    height: 20.h,
                  ),
                ),
              ),
            ),
            UIHelper.verticalSpace(24.h),
            Text('Task Description', style: TextFontStyle.headline18c3F3B3Bpoppinsw500),
            UIHelper.verticalSpace(8.h),
            const CustomTextFormFieldWidget(
              fillColor: AppColors.cFAFAFA,
              hintTxt: 'Task Description',
            ),
            UIHelper.verticalSpace(200.h),
            ContactCustomButtonWidget(onTap: () {}, name1: 'Cancel', name2: 'Save',),
          ],
        ),
      ),
    );
  }
}


