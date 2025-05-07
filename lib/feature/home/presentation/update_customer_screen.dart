import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:thibaudbdx_app/common_widget/contact_custom_button_widget.dart';
import 'package:thibaudbdx_app/common_widget/custom_text_formfield_widget.dart';
import 'package:thibaudbdx_app/constants/text_font_style.dart';
import 'package:thibaudbdx_app/gen/assets.gen.dart';
import 'package:thibaudbdx_app/gen/colors.gen.dart';
import 'package:thibaudbdx_app/helpers/ui_helpers.dart';


class UpdateCustomerScreen extends StatefulWidget {
  const UpdateCustomerScreen({super.key});

  @override
  State<UpdateCustomerScreen> createState() => _UpdateCustomerScreenState();
}

class _UpdateCustomerScreenState extends State<UpdateCustomerScreen> {

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
        title: Text('Add  Contact',
            style: TextFontStyle.headline24cFFFFFFpoppinsw600),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UIHelper.verticalSpace(30.h),
            Text('Contact Type',
                style: TextFontStyle.headline18c3F3B3Bpoppinsw500),
            UIHelper.verticalSpace(8.h),
            CustomTextFormFieldWidget(
              fillColor: AppColors.cFAFAFA,
              hintTxt: 'Select contact type',
              suffixIcon: Transform.scale(scale: 0.60,
                  child: SvgPicture.asset(Assets.icons.arrwback)),
            ),
            UIHelper.verticalSpace(24.h),
            Text('Company Name ',
                style: TextFontStyle.headline18c3F3B3Bpoppinsw500),
            UIHelper.verticalSpace(8.h),
            const CustomTextFormFieldWidget(
              fillColor: AppColors.cFAFAFA,
              hintTxt: 'Company Name',
            ),
            UIHelper.verticalSpace(24.h),
            Text('Owner Name ',
                style: TextFontStyle.headline18c3F3B3Bpoppinsw500),
            UIHelper.verticalSpace(8.h),
            const CustomTextFormFieldWidget(
              fillColor: AppColors.cFAFAFA,
              hintTxt: 'Owner Name',
            ),
            UIHelper.verticalSpace(24.h),
            Text('Address', style: TextFontStyle.headline18c3F3B3Bpoppinsw500),
            UIHelper.verticalSpace(8.h),
            const CustomTextFormFieldWidget(
              fillColor: AppColors.cFAFAFA,
              hintTxt: 'Owner Name',
            ),
            UIHelper.verticalSpace(24.h),
            Text('City', style: TextFontStyle.headline18c3F3B3Bpoppinsw500),
            UIHelper.verticalSpace(8.h),
            const CustomTextFormFieldWidget(
              fillColor: AppColors.cFAFAFA,
              hintTxt: 'Owner Name',
            ),
            UIHelper.verticalSpace(24.h),
            Text('Zip Code', style: TextFontStyle.headline18c3F3B3Bpoppinsw500),
            UIHelper.verticalSpace(8.h),
            const CustomTextFormFieldWidget(
              fillColor: AppColors.cFAFAFA,
              hintTxt: 'Owner Name',
            ),
            UIHelper.verticalSpace(24.h),
            Text('Phone Number',
                style: TextFontStyle.headline18c3F3B3Bpoppinsw500),
            UIHelper.verticalSpace(8.h),

            IntlPhoneField(
              controller: phoneNumberController,
              initialCountryCode: 'US',
              showCountryFlag: true,
              dropdownIcon:
                  const Icon(Icons.arrow_drop_down, color: AppColors.c292D32),
              decoration: InputDecoration(
                hintText: '+10000000000000',
                hintStyle: TextFontStyle.headline14c848585poppinsw400,
                filled: true,
                fillColor: AppColors.cFAFAFA,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.r),
                  borderSide: BorderSide.none,
                ),
              ),
              dropdownIconPosition: IconPosition.trailing,
              disableLengthCheck: true, // allows any number of digits
              onCountryChanged: (country) {
                setState(() {
                  countryCode = '+${country.dialCode}';
                });
              },
              onChanged: (phone) {
                setState(() {
                  // Remove spaces, dashes, etc. from the number
                  String rawNumber = phone.number.replaceAll(RegExp(r'\D'), '');
                  fullPhoneNumber = '$countryCode$rawNumber';
                });
              },
            ),
            UIHelper.verticalSpace(24.h),
            Text('Email', style: TextFontStyle.headline18c3F3B3Bpoppinsw500),
            UIHelper.verticalSpace(8.h),
            CustomTextFormFieldWidget(
              prefixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: SvgPicture.asset(
                  Assets.icons.message,
                  height: 16.h,
                ),
              ),
              fillColor: AppColors.cFAFAFA,
              hintTxt: 'Email',
            ),
            UIHelper.verticalSpace(24.h),
            Text('Website', style: TextFontStyle.headline18c3F3B3Bpoppinsw500),
            UIHelper.verticalSpace(8.h),
            CustomTextFormFieldWidget(
              prefixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: SvgPicture.asset(
                  Assets.icons.circle2,
                  height: 16.h,
                ),
              ),
              fillColor: AppColors.cFAFAFA,
              hintTxt: 'website',
            ),
            UIHelper.verticalSpace(24.h),
            Text('Add Tag', style: TextFontStyle.headline18c3F3B3Bpoppinsw500),
            UIHelper.verticalSpace(8.h),

            const CustomTextFormFieldWidget(
              fillColor: AppColors.cFAFAFA,
              hintTxt: 'Resent',
            ),
            UIHelper.verticalSpace(24.h),
            Text('Additional Information', style: TextFontStyle.headline18c3F3B3Bpoppinsw500),
            UIHelper.verticalSpace(8.h),
            const CustomTextFormFieldWidget(
              fillColor: AppColors.cFAFAFA,
              hintTxt: 'Resent',
            ),
            UIHelper.verticalSpace(34.h),
            ContactCustomButtonWidget(onTap: () {  }, name1: 'Cancel', name2: 'Save',),
          ],
        ),
      ),
    );
  }
}


