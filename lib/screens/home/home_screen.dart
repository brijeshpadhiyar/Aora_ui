import 'package:aora/utils/colors.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static route() => MaterialPageRoute(builder: (context) => const HomeScreen());

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> _cardImage = <String>[
    "assets/card/card1.jpg",
    "assets/card/card2.jpg",
    "assets/card/card3.jpg",
  ];

  int _activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        shrinkWrap: true,
        cacheExtent: 0,
        scrollBehavior: const CupertinoScrollBehavior(),
        slivers: [
          SliverAppBar(
            backgroundColor: AppColors.mainColor,
            titleSpacing: 0,
            title: Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome Back",
                    style: TextStyle(color: AppColors.whiteCDCDEO, fontSize: 14.sp, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Sanju",
                    style: TextStyle(color: Colors.white, fontSize: 24.sp, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 15.w),
                child: IconButton(
                    style: ElevatedButton.styleFrom(fixedSize: Size(40.h, 40.h)),
                    onPressed: () {},
                    icon: Image.asset("assets/logo.png")),
              )
            ],
            bottom: PreferredSize(
                preferredSize: Size(double.infinity, 70.h),
                child: Column(
                  children: [
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            hintText: "Search for a video topic", suffixIcon: Icon(CupertinoIcons.search)),
                      ),
                    ),
                  ],
                )),
          ),
          SliverFillRemaining(
            fillOverscroll: false,
            hasScrollBody: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50.h),
                Padding(
                  padding: EdgeInsets.only(left: 20.w),
                  child: Text(
                    "Trending Videos",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.whiteCDCDEO,
                    ),
                  ),
                ),
                SizedBox(height: 30.h),
                SizedBox(
                  width: double.infinity,
                  height: 300.h,
                  child: Swiper(
                    viewportFraction: 0.4,
                    scale: 0.7,
                    onIndexChanged: (value) {
                      setState(() {
                        _activeIndex = value;
                      });
                    },
                    autoplay: true,
                    itemCount: _cardImage.length,
                    itemBuilder: (context, index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(10.r),
                        child: Image.asset(
                          _cardImage[index],
                          width: 170.w,
                          height: 270.h,
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 20.h),
                Center(
                  child: AnimatedSmoothIndicator(
                    activeIndex: _activeIndex,
                    count: _cardImage.length,
                    effect: ExpandingDotsEffect(
                      dotHeight: 7.h,
                      dotWidth: 7.h,
                      dotColor: AppColors.whiteCDCDEO,
                      activeDotColor: AppColors.buttonColor,
                    ),
                  ),
                ),
              ],
            ),
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
