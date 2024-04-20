import 'package:aora/screens/home/main_home_screen.dart';
import 'package:aora/screens/sign_up_screen.dart';
import 'package:aora/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static route() => MaterialPageRoute(builder: (context) => const LoginScreen());

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isobscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 140.h),
              Row(
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
              SizedBox(height: 40.h),
              Text(
                "Sign in",
                style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 40.h),
              Text(
                "Email",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.whiteCDCDEO,
                ),
              ),
              SizedBox(height: 10.h),
              TextFormField(
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
                decoration: const InputDecoration(
                  hintText: "Enter Your Email",
                ),
              ),
              SizedBox(height: 30.h),
              Text(
                "Password",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.whiteCDCDEO,
                ),
              ),
              SizedBox(height: 10.h),
              TextFormField(
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
                obscureText: _isobscureText,
                decoration: InputDecoration(
                    hintText: "Enter Your Password",
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _isobscureText = !_isobscureText;
                          });
                        },
                        icon: Icon(_isobscureText ? CupertinoIcons.eye_slash : CupertinoIcons.eye))),
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forget password",
                        style: TextStyle(color: AppColors.whiteCDCDEO, fontSize: 14.sp, fontWeight: FontWeight.w600),
                      ))),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(context, MainHomeScreen.route(),(route) => false,);
                  },
                  child: Text(
                    "Log in",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  )),
              SizedBox(height: 30.h),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context, SignUpScreen.route());
                  },
                  child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          text: "Don't have an account? ",
                          style: TextStyle(color: AppColors.whiteCDCDEO, fontSize: 14.sp, fontWeight: FontWeight.w600),
                          children: [
                            TextSpan(
                              text: "Signup",
                              style:
                                  TextStyle(color: AppColors.buttonColor, fontSize: 14.sp, fontWeight: FontWeight.w600),
                            )
                          ])),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
