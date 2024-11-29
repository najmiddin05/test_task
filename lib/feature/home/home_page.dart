import 'package:flutter/material.dart';
import 'package:test_task/core/theme/colors.dart';
import 'package:test_task/core/theme/theme_text_style.dart';
import 'package:test_task/feature/widgets/glass_morphic_widget_first.dart';
import 'package:test_task/feature/widgets/glass_morphic_widget_second.dart';
import 'package:test_task/feature/widgets/purchase_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: BackButton(color: Colors.white.withOpacity(0.4)),
      ),
      body: Stack(
        children: [
          Transform.translate(
            offset: Offset(-MediaQuery.sizeOf(context).width / 2, -30),
            child: Container(
              width: MediaQuery.sizeOf(context).width / 1.2,
              height: MediaQuery.sizeOf(context).height / 2.35,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.purple,
                    blurRadius: 100,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(
              MediaQuery.sizeOf(context).width / 1.8,
              MediaQuery.sizeOf(context).height / 3,
            ),
            child: Container(
              width: MediaQuery.sizeOf(context).width / 0.94,
              height: MediaQuery.sizeOf(context).height / 2.35,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.purple,
                    blurRadius: 100,
                  ),
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Выберите подписку',
                  style: TextStyles.textStyles.maMedium20,
                  textAlign: TextAlign.center,
                ),
              ),
              const Spacer(flex: 2),
              const GlassMorphicWidgetFirst(),
              const Spacer(),
              const GlassMorphicWidgetSecond(),
              const Spacer(),
              const PurchaseButton(),
              const Spacer(flex: 3),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 37, vertical: 38),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'terms of use',
                      style: TextStyles.textStyles.maMedium12.copyWith(color: AppColors.white.withOpacity(0.6)),
                    ),
                    Text(
                      'policy privacy',
                      style: TextStyles.textStyles.maMedium12.copyWith(color: AppColors.white.withOpacity(0.6)),
                    ),
                    Text(
                      'Restore purchase',
                      style: TextStyles.textStyles.maMedium12.copyWith(color: AppColors.white.withOpacity(0.6)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
