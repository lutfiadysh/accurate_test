import 'package:accurate_lutfi/core/theme/fonts.dart';
import 'package:flutter/material.dart';

class SuccessSnackbar {
  static void showSuccessSnackbar(
    BuildContext context, {
    required String title,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      duration: const Duration(seconds: 2),
      // margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      content: Container(
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 2),
              color: Colors.black.withOpacity(.16),
              blurRadius: 12,
            ),
          ],
        ),
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            const Icon(
              Icons.check_circle_outline,
              color: Colors.white,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: Fonts.poppins.copyWith(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      behavior: SnackBarBehavior.fixed,
    ));
  }
}
