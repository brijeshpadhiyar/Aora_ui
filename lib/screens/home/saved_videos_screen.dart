import 'package:aora/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SavedVideosScreen extends StatefulWidget {
  const SavedVideosScreen({super.key});
  static route() => MaterialPageRoute(builder: (context) => const SavedVideosScreen());

  @override
  State<SavedVideosScreen> createState() => _SavedVideosScreenState();
}

class _SavedVideosScreenState extends State<SavedVideosScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: AppColors.mainColor,
            titleSpacing: 0,
            title: Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Text(
                "Saved Videos",
                style: TextStyle(color: Colors.white, fontSize: 24.sp, fontWeight: FontWeight.w600),
              ),
            ),
            bottom: PreferredSize(
                preferredSize: Size(double.infinity, 100.h),
                child: Column(
                  children: [
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            hintText: "Search your saved videos", suffixIcon: Icon(CupertinoIcons.search)),
                      ),
                    ),
                    SizedBox(height: 40.h),
                  ],
                )),
          ),
          SliverList.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Card(
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 47.h,
                              height: 47.h,
                              decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.buttonColor, width: 2),
                                  borderRadius: BorderRadius.circular(10.r)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.r),
                                child: Image.network(
                                  "https://images.unsplash.com/photo-1576568684258-5501fa2a0eb7?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8d29sa2luZyUyMHdvbWVufGVufDB8fDB8fHww",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: 5.w),
                            SizedBox(
                                height: 47.h,
                                width: 220.w,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        "Woman walks down a Tokyo And Woman walks down a Tokyo",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            color: Colors.white, fontWeight: FontWeight.w600, fontSize: 14.sp),
                                      ),
                                    ),
                                    Flexible(
                                      child: Text(
                                        "Brandon Etter",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            color: AppColors.whiteCDCDEO, fontWeight: FontWeight.w400, fontSize: 12.sp),
                                      ),
                                    ),
                                  ],
                                )),
                            const Spacer(),
                            PopupMenuButton(
                              color: const Color(0XFF232533),
                              position: PopupMenuPosition.under,
                              tooltip: "Menu",
                              constraints: BoxConstraints.tight(Size(100.w, 90.h)),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                              itemBuilder: (context) => <PopupMenuEntry>[
                                PopupMenuItem(
                                  child: SizedBox(
                                    width: 70.w,
                                    height: 35.h,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.save,
                                          weight: 10.w,
                                          size: 15.h,
                                        ),
                                        SizedBox(width: 5.w),
                                        Text(
                                          "Save",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12.sp,
                                            color: AppColors.whiteCDCDEO,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                PopupMenuItem(
                                  child: SizedBox(
                                    width: 70.w,
                                    height: 35.h,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.delete,
                                          weight: 10.w,
                                          size: 15.h,
                                        ),
                                        SizedBox(width: 5.w),
                                        Text(
                                          "Delete",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12.sp,
                                            color: AppColors.whiteCDCDEO,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 10.h),
                        SizedBox(
                          height: 200.h,
                          width: double.infinity,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.r),
                            child: Image.network(
                              "https://plus.unsplash.com/premium_photo-1661380827487-0497159932b7?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8d2Fsa2luZyUyMHdvbWFufGVufDB8fDB8fHww",
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
