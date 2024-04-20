import 'package:aora/screens/ob_screen.dart';
import 'package:aora/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        ensureScreenSize: true,
        minTextAdapt: true,
        splitScreenMode: true,
        useInheritedMediaQuery: true,
        builder: (context, child) {
          return MaterialApp(
            title: 'Aora',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                scaffoldBackgroundColor: AppColors.mainColor,
                brightness: Brightness.dark,
                fontFamily: "Poppins",
                textButtonTheme: TextButtonThemeData(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                  )
                ),
                inputDecorationTheme: InputDecorationTheme(
                  filled: true,
                  fillColor: AppColors.textfiledBG,
                  hintStyle: TextStyle(
                    fontSize: 16.sp,
                    color: const Color(0Xff7B7B8B),
                    fontWeight: FontWeight.w400,
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
                  border: InputBorder.none,
                  enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.transparent)),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.buttonColor),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
                elevatedButtonTheme: ElevatedButtonThemeData(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.buttonColor,
                        foregroundColor: Colors.black,
                        fixedSize: Size(327.w, 58.h),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))))),
            home: const OnBordingScreen(),
          );
        });
  }
}
