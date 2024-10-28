import 'package:flutter/material.dart';
import 'package:grock/grock.dart';
import 'package:movies/app/core/extensions/extensions.dart';

import '../ui/styles/text_styles.dart';
import '../utils/utils.dart';

class Messages {
  Messages._();

  static void alert(String message) {
    Grock.snackBar(
      opacity: 1,
      leading: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.yellow.withOpacity(0.13),
              offset: const Offset(0, 2),
              blurRadius: 100.r,
              spreadRadius: 100.r,
            ),
          ],
        ),
        child: Image.asset(
          Assets.messagesAlert,
          height: 32.h,
          fit: BoxFit.contain,
        ),
      ),
      leadingPadding: EdgeInsets.fromLTRB(16.w, 25.h, 16.w, 25.h),
      title: "Atencão!",
      titleStyle: TextStyles.i.semiBold.copyWith(
        fontSize: 16.sp,
        color: Colors.white,
      ),
      borderRadius: BorderRadius.circular(8.r),
      description: message,
      descriptionStyle: TextStyles.i.regular.copyWith(
        fontSize: 14.sp,
        color: const Color(0XFFC8C5C5),
      ),
      color: const Color(0XFF242C32),
    );
  }

  static void error(String message) {
    Grock.snackBar(
      opacity: 1,
      leading: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.red.withOpacity(0.13),
              offset: const Offset(0, 2),
              blurRadius: 100.r,
              spreadRadius: 100.r,
            ),
          ],
        ),
        child: Image.asset(
          Assets.messagesError,
          height: 32.h,
          fit: BoxFit.contain,
        ),
      ),
      leadingPadding: EdgeInsets.fromLTRB(16.w, 25.h, 16.w, 25.h),
      title: "Erro!",
      titleStyle: TextStyles.i.semiBold.copyWith(
        fontSize: 16.sp,
        color: Colors.white,
      ),
      borderRadius: BorderRadius.circular(8.r),
      description: message,
      descriptionStyle: TextStyles.i.regular.copyWith(
        fontSize: 14.sp,
        color: const Color(0XFFC8C5C5),
      ),
      color: const Color(0XFF242C32),
    );
  }

  static void success(String message) {
    Grock.snackBar(
      opacity: 1,
      leading: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.green.withOpacity(0.13),
              offset: const Offset(0, 2),
              blurRadius: 100.r,
              spreadRadius: 100.r,
            ),
          ],
        ),
        child: Image.asset(
          Assets.messagesSuccess,
          height: 32.h,
          fit: BoxFit.contain,
        ),
      ),
      leadingPadding: EdgeInsets.fromLTRB(16.w, 25.h, 16.w, 25.h),
      title: "Sucesso!",
      titleStyle: TextStyles.i.semiBold.copyWith(
        fontSize: 16.sp,
        color: Colors.white,
      ),
      borderRadius: BorderRadius.circular(8.r),
      description: message,
      descriptionStyle: TextStyles.i.regular.copyWith(
        fontSize: 14.sp,
        color: const Color(0XFFC8C5C5),
      ),
      color: const Color(0XFF242C32),
    );
  }
}
