// Container(
// width: double.infinity,
// padding: EdgeInsets.symmetric(horizontal: 18),
// decoration: ShapeDecoration(
// color: AppColors.cFAFAFB,
// shape: RoundedRectangleBorder(
// side: BorderSide(
// width: 1,
// color: AppColors.cE8E8E8,
// ),
// borderRadius: BorderRadius.circular(25.r),
// ),
// ),
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// Text(
// 'I want to remember every detail',
// style: TextFontStyle.textStyle12w600c0A2540PlusJakartaSans.copyWith(
// fontSize: 16.sp,
// fontWeight: FontWeight.w400,
// ),
// ),
//
// Theme(
// data: Theme.of(context).copyWith(
// checkboxTheme: CheckboxThemeData(
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(50), // makes circle
// ),
// side: MaterialStateBorderSide.resolveWith((states) {
// // Inner border color and thickness
// return const BorderSide(color: AppColors.c88DEA6, width: 3);
// }),
// fillColor: MaterialStateProperty.resolveWith((states) {
// return states.contains(MaterialState.selected)
// ? AppColors.c88DEA6
//     : Colors.transparent;
// }),
// checkColor: MaterialStateProperty.all(AppColors.cFFFFFF),
// materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
// ),
// ),
// child: SizedBox(
// width: 48, // bigger width
// height: 48, // bigger height
// child: Checkbox(
// value: _dontShowAgain,
// onChanged: (bool? newValue) {
// setState(() {
// _dontShowAgain = newValue ?? false;
// });
// },
// ),
// ),
// ),
// ],
// ),
// // )a