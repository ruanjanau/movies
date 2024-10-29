import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/ui/components/components.dart';

class SkeletonMovies extends StatelessWidget {
  const SkeletonMovies({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Row(
            children: [
              DefaultShimmer(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.r),
                    color: Colors.grey,
                  ),
                  height: 210.h,
                  width: 146,
                ),
              ),
              SizedBox(width: 8.w),
            ],
          );
        });
  }
}
