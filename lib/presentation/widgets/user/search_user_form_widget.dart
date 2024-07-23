import 'package:accurate_lutfi/core/theme/fonts.dart';
import 'package:accurate_lutfi/core/theme/main_colors.dart';
import 'package:flutter/material.dart';

class SearchUserFormWidget extends StatelessWidget {
  final TextEditingController searchController;
  final Function(String val) onChanged;
  const SearchUserFormWidget({
    super.key,
    required this.searchController,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.symmetric(horizontal: 16),
      width: MediaQuery.of(context).size.width / 1.8,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: MainColors.backgroundAlt,
      ),
      child: TextFormField(
        onChanged: onChanged,
        controller: searchController,
        decoration: InputDecoration(
          hintText: 'Search...',
          hintStyle: Fonts.poppins.copyWith(
            fontSize: 16,
            color: Colors.grey,
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
        ),
      ),
    );
  }
}
