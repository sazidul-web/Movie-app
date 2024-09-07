import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MovieScreen extends StatelessWidget {
  final String img;
  final String title;
  final String Subtitle;
  final String Rating;
  MovieScreen(
      {required this.img,
      required this.title,
      required this.Subtitle,
      required this.Rating});

  @override
  Widget build(BuildContext context) {
    return Container(
      // constraints: BoxConstraints(maxHeight: 200.h),
      margin: EdgeInsets.all(8.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.w),
        color: Colors.grey.shade400,
      ),
      padding: EdgeInsets.all(2.r),
      height: 250.h,
      width: 150.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CachedNetworkImage(
            height: 170.h,
            width: 150.w,
            imageUrl: img,
            fit: BoxFit.cover,
            placeholder: (context, url) => SizedBox(
              height: 2,
              width: 2,
              child: CircularProgressIndicator(
                strokeWidth: 2,
              ),
            ),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            title,
            style: TextStyle(
                color: Colors.black,
                fontSize: 16.sp,
                fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            Subtitle,
            style: TextStyle(fontSize: 14.sp),
          ),
          SizedBox(
            height: 5.h,
          ),
          Spacer(),
          Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 20.sp,
                    color: Colors.yellow,
                  ),
                  Spacer(),
                  Text(
                    Rating,
                    style: TextStyle(fontSize: 18.sp),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
