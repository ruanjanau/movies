import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../home/home.dart';
import '../controllers/controllers.dart';
import '../details.dart';

class OthersList extends StatelessWidget {
  final DetailsController controller;
  const OthersList({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      designSize: const Size(146, 210),
      minTextAdapt: true,
    );

    return SizedBox(
      height: 220,
      width: double.infinity,
      child: Observer(builder: (context) {
        if (controller.isLoading) {
          return const SkeletonMovies();
        }
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: controller.movie?.others?.length,
          itemBuilder: (context, index) {
            final others = controller.movie?.others?[index];
            return CardOthersComponent(
              id: others?.id ?? 0,
              name: others?.name ?? '',
              image: others?.image ?? '',
            );
          },
        );
      }),
    );
  }
}
