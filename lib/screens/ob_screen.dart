import 'package:aora/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBordingScreen extends StatefulWidget {
  const OnBordingScreen({super.key});
  static route() => MaterialPageRoute(builder: (context) => const OnBordingScreen());

  @override
  State<OnBordingScreen> createState() => _OnBordingScreenState();
}

class _OnBordingScreenState extends State<OnBordingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/logo.png",
                    height: 35.h,
                    width: 35.h,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                      height: 35.h,
                      child: Text(
                        "Aora",
                        style: TextStyle(
                          fontSize: 35.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      )),
                ],
              ),
              SizedBox(height: 50.h),
              Image.asset(
                "assets/ob.png",
                fit: BoxFit.fill,
              ),
              SizedBox(height: 10.h),
              Text(
                "Discover Endless Possibilities with Aora",
                textAlign: TextAlign.center,
                maxLines: 2,
                style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 30.h),
              Text(
                "Where Creativity Meets Innovation: Embark on a Journey of Limitless Exploration with Aora",
                textAlign: TextAlign.center,
                maxLines: 2,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 30.h),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, SignUpScreen.route());
                  },
                  child: Text(
                    "Continue with Email",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
