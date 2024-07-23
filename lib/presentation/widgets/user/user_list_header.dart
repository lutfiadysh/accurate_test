import 'package:accurate_lutfi/core/theme/fonts.dart';
import 'package:accurate_lutfi/core/theme/main_colors.dart';
import 'package:accurate_lutfi/presentation/widgets/user/search_user_form_widget.dart';
import 'package:flutter/material.dart';

class UserListHeader extends StatelessWidget implements PreferredSizeWidget {
  final Function() onSortTap;
  final TextEditingController searchController;
  final Function(String val) onChanged;
  final Function() onCityFilterTap;
  const UserListHeader({
    super.key,
    required this.onSortTap,
    required this.searchController,
    required this.onChanged,
    required this.onCityFilterTap,
  });

  @override
  Size get preferredSize => const Size.fromHeight(110);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      centerTitle: false,
      titleSpacing: 0,
      title: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Text(
          'User',
          style: Fonts.poppins.copyWith(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 16),
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: MainColors.backgroundAlt,
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Icon(
            Icons.add,
            size: 15,
          ),
        ),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SearchUserFormWidget(
                searchController: searchController,
                onChanged: onChanged,
              ),
              InkWell(
                onTap: onSortTap,
                child: Container(
                  height: 50,
                  width: 50,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: MainColors.backgroundAlt,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(
                    Icons.sort,
                    size: 15,
                  ),
                ),
              ),
              InkWell(
                onTap: onCityFilterTap,
                child: Container(
                  height: 50,
                  width: 50,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: MainColors.backgroundAlt,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(
                    Icons.filter_alt,
                    size: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
