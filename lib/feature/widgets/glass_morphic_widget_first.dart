import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:test_task/core/theme/colors.dart';
import 'package:test_task/core/theme/theme_text_style.dart';

class GlassMorphicWidgetFirst extends StatelessWidget {
  const GlassMorphicWidgetFirst({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: AppColors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 26, right: 26, top: 26, bottom: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: 28,
                              width: 28,
                              child: DecoratedBox(
                                decoration:
                                    BoxDecoration(border: Border.all(color: AppColors.white), shape: BoxShape.circle),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "1 месяц",
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
                      ],
                    ),
                    Text(
                      "1000₽",
                      style: TextStyles.textStyles.maMedium16,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
