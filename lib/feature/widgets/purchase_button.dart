import 'package:flutter/material.dart';
import 'package:test_task/core/theme/colors.dart';
import 'package:test_task/core/theme/theme_text_style.dart';

class PurchaseButton extends StatelessWidget {
  const PurchaseButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 37, vertical: 0),
      child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.zero,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30), // Rounded edges
              ),
              backgroundColor: Colors.transparent, // Transparent background
              shadowColor: Colors.transparent, // Remove shadow
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    AppColors.lightBluGradient, // Light blue gradient color
                    AppColors.purpleGradient, // Purple gradient color
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(30), // Match shape
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18),
                  child: Text("Купить", style: TextStyles.textStyles.maMedium20),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
