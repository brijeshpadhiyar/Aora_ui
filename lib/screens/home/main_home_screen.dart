import 'package:aora/screens/home/home_screen.dart';
import 'package:aora/screens/home/profile_screen.dart';
import 'package:aora/screens/home/saved_videos_screen.dart';
import 'package:aora/screens/home/vidio_upload_screen.dart';
import 'package:aora/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});
  static route() => MaterialPageRoute(builder: (context) => const MainHomeScreen());

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = <Widget>[
    const HomeScreen(),
    const VidioUploadScreen(),
    const SavedVideosScreen(),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 85.h,
        decoration: const BoxDecoration(border: Border(top: BorderSide(color: Colors.white10))),
        child: Theme(
          data: ThemeData(
            splashColor: Colors.transparent,
            shadowColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (value) {
              setState(() {
                _currentIndex = value;
              });
            },
            type: BottomNavigationBarType.fixed,
            landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
            mouseCursor: MouseCursor.defer,
            backgroundColor: AppColors.mainColor,
            showUnselectedLabels: true,
            unselectedItemColor: AppColors.whiteCDCDEO,
            unselectedLabelStyle: TextStyle(
              color: AppColors.whiteCDCDEO,
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
            ),
            selectedItemColor: AppColors.buttonColor,
            selectedLabelStyle: TextStyle(
              color: AppColors.buttonColor,
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
            ),
            items: const [
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.add_box_rounded), label: "Create"),
              BottomNavigationBarItem(icon: Icon(Icons.save_sharp), label: "Saved"),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
            ],
          ),
        ),
      ),
    );
  }
}
