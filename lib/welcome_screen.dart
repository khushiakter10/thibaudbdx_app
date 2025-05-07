//
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'gen/assets.gen.dart';
//
// final class WelcomeScreen extends StatefulWidget {
//   const WelcomeScreen({super.key});
//
//   @override
//   State<WelcomeScreen> createState() => _WelcomeScreenState();
// }
//
//
// class _WelcomeScreenState extends State<WelcomeScreen> {
//
//   @override
//   Widget build(BuildContext context) {
//     // Timer(Duration(seconds: 3), (){
//     //   NavigationService.navigateTo(Routes.onboardScreen);
//     // });
//
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage(Assets.images.welcome.path),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: SingleChildScrollView(
//           padding: EdgeInsets.symmetric(vertical: 18.0.h, horizontal: 20.w),
//           child: SizedBox(
//             height: MediaQuery.of(context).size.height, // Full height
//             child: Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center, // Center vertically
//                 children: [
//                   Image.asset(
//                     Assets.icons.texas.path,
//                     height: 206.h, // Responsive height
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
