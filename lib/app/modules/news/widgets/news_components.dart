import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewsComponents extends StatelessWidget {
  final String title;
  final String image;
  final String description;
  final String date;
  final String reference;
  const NewsComponents({
    super.key,
    required this.title,
    required this.image,
    required this.description,
    required this.date,
    required this.reference,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 50.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.r),
                  image: DecorationImage(
                    image: NetworkImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 18.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(4.r),
                      bottomRight: Radius.circular(4.r),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(1.0),
                      ],
                    ),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 8.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 2.h),
          Text(
            description,
            style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                color: Colors.white),
          ),
          SizedBox(height: 2.h),
          Row(
            children: [
              const Text(
                'Referencia: ',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.yellow),
              ),
              Text(
                reference,
                style: const TextStyle(
                    fontWeight: FontWeight.w500, color: Colors.white),
              ),
            ],
          ),
          SizedBox(height: 2.h),
          Row(
            children: [
              const Text(
                'Data: ',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.yellow),
              ),
              Text(
                date,
                style: const TextStyle(
                    fontWeight: FontWeight.w500, color: Colors.white),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          const Divider(color: Colors.grey, height: 1),
          SizedBox(height: 8.h),
        ],
      ),
    );
  }
}
