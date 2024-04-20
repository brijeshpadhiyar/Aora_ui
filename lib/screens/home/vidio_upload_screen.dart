import 'package:aora/utils/colors.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VidioUploadScreen extends StatefulWidget {
  const VidioUploadScreen({super.key});
  static route() => MaterialPageRoute(builder: (context) => const VidioUploadScreen());

  @override
  State<VidioUploadScreen> createState() => _VidioUploadScreenState();
}

class _VidioUploadScreenState extends State<VidioUploadScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 80.h),
              Text(
                "Upload Video",
                style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 40.h),
              Text(
                "Video Title",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.whiteCDCDEO,
                ),
              ),
              SizedBox(height: 5.h),
              TextFormField(
                decoration: const InputDecoration(hintText: "Give your video a catchy title..."),
              ),
              SizedBox(height: 40.h),
              Text(
                "Upload Video",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.whiteCDCDEO,
                ),
              ),
              SizedBox(height: 5.h),
              Container(
                width: double.infinity,
                height: 150.h,
                decoration: BoxDecoration(color: AppColors.textfiledBG, borderRadius: BorderRadius.circular(10.r)),
                child: Center(
                  child: SizedBox(
                    height: 50.h,
                    width: 50.h,
                    child: DottedBorder(
                      borderType: BorderType.RRect,
                      color: AppColors.buttonColor,
                      dashPattern: const [3, 3, 3, 3],
                      radius: const Radius.circular(12),
                      child: Center(
                        child: Image.asset(
                          "assets/upload.png",
                          height: 25.h,
                          width: 25.h,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40.h),
              Text(
                "Thumbnail Image",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.whiteCDCDEO,
                ),
              ),
              SizedBox(height: 5.h),
              Container(
                width: double.infinity,
                height: 60.h,
                decoration: BoxDecoration(color: AppColors.textfiledBG, borderRadius: BorderRadius.circular(10.r)),
                child: Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/upload.png",
                        width: 25.h,
                        height: 25.h,
                      ),
                      Text(
                        "Choose a file",
                        style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500, color: AppColors.whiteCDCDEO),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40.h),
              Text(
                "AI Prompt",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.whiteCDCDEO,
                ),
              ),
              SizedBox(height: 5.h),
              TextFormField(
                decoration: const InputDecoration(hintText: "The AI prompt of your video...."),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
