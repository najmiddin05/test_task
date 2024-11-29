import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:test_task/core/theme/colors.dart';
import 'package:test_task/core/theme/theme_text_style.dart';

class GlassMorphicWidgetSecond extends StatelessWidget {
  const GlassMorphicWidgetSecond({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 37, vertical: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: AppColors.black.withOpacity(0.37),
                    borderRadius: BorderRadius.circular(20),
                    border: const GradientBoxBorder(
                      gradient: LinearGradient(colors: [AppColors.black, AppColors.white]),
                      width: 1,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(26),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Title Row
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  width: 28,
                                  height: 28,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient: LinearGradient(
                                      colors: [
                                        AppColors.lightBluGradient, // Light blue gradient color
                                        AppColors.purpleGradient, // Purple gradient color
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ),
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons.check, // Checkmark icon
                                      color: AppColors.white,
                                      size: 15,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "6 месяц",
                                      style: TextStyles.textStyles.maMedium15,
                                    ),
                                    Text(
                                      "Описание",
                                      style: TextStyles.textStyles.maMedium12,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "10 000₽",
                                  style: TextStyles.textStyles.maMedium16,
                                ),
                                Text(
                                  "12 000₽",
                                  style: TextStyles.textStyles.maMedium12.copyWith(
                                      decoration: TextDecoration.lineThrough,
                                      decorationColor: AppColors.white.withOpacity(0.6),
                                      color: AppColors.white.withOpacity(0.46)),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 40),
                        // List items
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: List.generate(5, (index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.circle,
                                    size: 7,
                                    color: AppColors.white,
                                  ),
                                  const SizedBox(width: 16),
                                  Text(
                                    "что входит",
                                    style: TextStyles.textStyles.maMedium12,
                                  ),
                                ],
                              ),
                            );
                          }),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: const Offset(-20, 0),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(13),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "выгодно",
                  style: TextStyles.textStyles.maMedium12.copyWith(
                    color: AppColors.lightBluGradient,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
