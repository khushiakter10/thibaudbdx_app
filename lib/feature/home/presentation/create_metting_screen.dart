import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thibaudbdx_app/common_widget/contact_custom_button_widget.dart';
import 'package:thibaudbdx_app/common_widget/custom_text_formfield_widget.dart';
import 'package:thibaudbdx_app/constants/text_font_style.dart';
import 'package:thibaudbdx_app/gen/assets.gen.dart';
import 'package:thibaudbdx_app/gen/colors.gen.dart';
import 'package:thibaudbdx_app/helpers/ui_helpers.dart';

class CreateMeetingScreen extends StatefulWidget {
  const CreateMeetingScreen({super.key});

  @override
  State<CreateMeetingScreen> createState() => _CreateMeetingScreenState();
}

class _CreateMeetingScreenState extends State<CreateMeetingScreen> {
  ////////////////////// Calendar ///////////////////////////
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

  ////////////////////// Clock ///////////////////////////
  final TextEditingController _timeController = TextEditingController();
  TimeOfDay selectedTime = TimeOfDay.now();
  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
        _timeController.text = selectedTime.format(context);
      });
    }
  }

  ////////////////////////////////////////////////////////
  bool _value = false;
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
            onTap: () => Navigator.pop(context),
            child: Transform.scale(
              scale: 2,
              child: SvgPicture.asset(Assets.icons.bacbutton),
            ),
          ),
        ),
        title: Text('Create Meeting',
            style: TextFontStyle.headline24cFFFFFFpoppinsw600),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UIHelper.verticalSpace(24.h),

            /// Meeting Name
            Text('Meeting Name',
                style: TextFontStyle.headline18c3F3B3Bpoppinsw500),
            UIHelper.verticalSpace(8.h),
            const CustomTextFormFieldWidget(
              fillColor: AppColors.cFAFAFA,
              hintTxt: 'Meeting name',
            ),

            UIHelper.verticalSpace(24.h),

            /// Description
            Text('Meeting Description',
                style: TextFontStyle.headline18c3F3B3Bpoppinsw500),
            UIHelper.verticalSpace(8.h),
            const CustomTextFormFieldWidget(
              fillColor: AppColors.cFAFAFA,
              hintTxt: 'Meeting Description',
            ),

            UIHelper.verticalSpace(24.h),

            /// Date Picker
            Text('Date',
                style: TextFontStyle.headline18c3F3B3Bpoppinsw500),
            UIHelper.verticalSpace(8.h),
            CustomTextFormFieldWidget(
              controller: _dateController,
              fillColor: AppColors.cFAFAFA,
              hintTxt: 'Select Date',
              suffixIcon: Transform.scale(
                scale: 0.6,
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

            /// Time Picker
            Text('Time',
                style: TextFontStyle.headline18c3F3B3Bpoppinsw500),
            UIHelper.verticalSpace(8.h),
            CustomTextFormFieldWidget(
              controller: _timeController,
              fillColor: AppColors.cFAFAFA,
              hintTxt: 'Select Time',
              suffixIcon: GestureDetector(
                onTap: () => _selectTime(context),
                child: Transform.scale(
                  scale: 0.6,
                  child: SvgPicture.asset(
                    Assets.icons.clock,
                    height: 20.h,
                  ),
                ),
              ),
            ),

            UIHelper.verticalSpace(24.h),

            /// Set Reminder
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.r),
                border: Border.all(color: AppColors.cE3E3E3),
              ),
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 12.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Set Reminder',
                    style: TextFontStyle.headline18c3F3B3Bpoppinsw500
                        .copyWith(fontSize: 16.sp),
                  ),
                  Transform.scale(
                    scale: 1,
                    child: CupertinoSwitch(
                      activeColor: AppColors.c4CAF50,
                      thumbColor: Colors.white,
                      trackColor: AppColors.cE8F5E9,
                      value: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),

            UIHelper.verticalSpace(24.h),

            /// Reminder Before Time
            CustomTextFormFieldWidget(
              fillColor: AppColors.cFAFAFA,
              hintTxt: 'Remind Me Before',
              suffixIcon: Transform.scale(
                scale: 0.6,
                child: SvgPicture.asset(Assets.icons.arrwback),
              ),
            ),

            UIHelper.verticalSpace(24.h),

            /// Buttons
            ContactCustomButtonWidget(
              onTap: () {
                // Handle save logic
              },
              name1: 'Cancel',
              name2: 'Save',
            ),
          ],
        ),
      ),
    );
  }
}
