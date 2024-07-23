import 'package:accurate_lutfi/core/theme/fonts.dart';
import 'package:accurate_lutfi/core/theme/main_colors.dart';
import 'package:flutter/material.dart';

class DropdownFormsWidget extends StatelessWidget {
  final Function() onTap;
  final String label;
  final bool? isRequired;
  final TextEditingController controller;
  const DropdownFormsWidget(
      {super.key,
      this.isRequired,
      required this.onTap,
      required this.label,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      readOnly: true,
      onTap: onTap,
      style: Fonts.poppins.copyWith(
        fontSize: 14,
      ),
      decoration: InputDecoration(
        label: RichText(
          text: TextSpan(
            text: label,
            style: Fonts.poppins.copyWith(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: MainColors.textContentGray,
            ),
            children: <TextSpan>[],
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: MainColors.backgroundAlt),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.deepPurple),
        ),
        suffixIcon: const Icon(
          Icons.keyboard_arrow_down,
        ),
      ),
    );
  }
}
