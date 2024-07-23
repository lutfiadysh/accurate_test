import 'package:accurate_lutfi/core/theme/fonts.dart';
import 'package:accurate_lutfi/core/theme/main_colors.dart';
import 'package:flutter/material.dart';

class CustomFormFieldWidget extends StatelessWidget {
  final String hint;
  final int? maxLines;
  final TextInputType? type;
  final TextEditingController controller;
  const CustomFormFieldWidget({
    super.key,
    required this.hint,
    this.maxLines,
    this.type,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: TextFormField(
        controller: controller,
        maxLines: maxLines ?? 1,
        keyboardType: type,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: Fonts.poppins.copyWith(
            fontSize: 14,
            color: MainColors.textContentGray,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: MainColors.backgroundAlt),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.deepPurple),
          ),
        ),
      ),
    );
  }
}
