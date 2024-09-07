import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tv_channel_project/Utils/Image/Image.dart';
import 'package:get/get.dart';
import 'package:tv_channel_project/Widget/SpashoScreen.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Navigate() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(SpashoScreen());
    });
  }

  @override
  void initState() {
    Navigate();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.pink.shade600,
      //   leading: IconButton(
      //     onPressed: () {},
      //     icon: Icon(Icons.menu),
      //     color: Colors.white,
      //   ),
      //   title: Text('TV Channel'),
      //   shadowColor: Colors.pink.shade600,
      //   actions: [
      //     IconButton(onPressed: () {}, icon: Icon(Icons.search)),
      //     IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
      //   ],
      // ),
      body: Container(
        padding: EdgeInsets.all(44.r),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(-0.45, 0.64),
            end: Alignment(0.77, -0.64),
            colors: [
              Color(0xFF7668A9),
              Color(0xFF2E2451),
            ],
          ),
        ),
        child: Image.asset(AppImage.appLogo),
      ),
    );
  }
}
