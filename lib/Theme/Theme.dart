import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_list/Theme/Color.dart';

ThemeData appTheme() {
  ThemeData base = ThemeData();
  return base.copyWith(
    useMaterial3: true,
    scaffoldBackgroundColor: blue,
    textTheme: Typography.englishLike2021.apply(fontSizeFactor: 1.sp,bodyColor:Colors.black),
  );
}

TextTheme _appTheme(TextTheme base) {
  return base.copyWith(
    // fontsize:28
    headlineMedium: const TextTheme().headlineMedium?.copyWith(
      fontSize: const TextTheme().headlineMedium?.fontSize?.sp,
    ),

    // fontsize:24
    headlineSmall: const TextTheme().headlineSmall?.copyWith(
      fontSize: const TextTheme().headlineSmall?.fontSize?.sp,
    ),
    // fontsize:22
    titleLarge: const TextTheme().titleLarge?.copyWith(
      fontSize: const TextTheme().titleLarge?.fontSize?.sp,
    ),
    // fontsize:16
    titleMedium: const TextTheme().titleMedium?.copyWith(
      fontSize: const TextTheme().titleMedium?.fontSize?.sp,
    ),
    // fontsize:14
    titleSmall: const TextTheme().titleSmall?.copyWith(
      fontSize: const TextTheme().titleSmall?.fontSize?.sp,
    ),
    // fontsize:16
    bodyLarge: const TextTheme().bodyLarge?.copyWith(
      fontSize: const TextTheme().bodyLarge?.fontSize?.sp,
    ),
    // fontsize:14
    bodyMedium: const TextTheme().bodyMedium?.copyWith(
      fontSize: const TextTheme().bodyMedium?.fontSize?.sp,
    ),
    // fontsize:12
    bodySmall: const TextTheme().bodySmall?.copyWith(
      fontSize: const TextTheme().bodySmall?.fontSize?.sp,
    ),
    // fontsize:14
    labelLarge: const TextTheme().labelLarge?.copyWith(
      fontSize: const TextTheme().labelLarge?.fontSize?.sp,
    ),
    // fontsize:12
    labelMedium: const TextTheme().labelMedium?.copyWith(
      fontSize: const TextTheme().labelMedium?.fontSize?.sp,
    ),
    // fontsize:11
    labelSmall: const TextTheme().labelSmall?.copyWith(
      fontSize: const TextTheme().labelSmall?.fontSize?.sp,
    ),
  );
}