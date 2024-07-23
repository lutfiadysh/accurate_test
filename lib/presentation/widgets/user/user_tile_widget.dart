import 'package:accurate_lutfi/core/theme/fonts.dart';
import 'package:accurate_lutfi/core/theme/main_colors.dart';
import 'package:accurate_lutfi/data/entities/user_models/user_models.dart';
import 'package:flutter/material.dart';

class UserTileWidget extends StatelessWidget {
  final UserData e;
  final List<UserData> expandedWidgets;
  final Function(UserData data) onExpandTap;
  const UserTileWidget({
    super.key,
    required this.e,
    required this.expandedWidgets,
    required this.onExpandTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 12),
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: MainColors.backgroundAlt,
                  ),
                  child: Icon(
                    Icons.person,
                    color: MainColors.textContentGray,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      e.name,
                      style: Fonts.poppins.copyWith(
                        fontSize: 14,
                        color: MainColors.textContentBlack,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      e.city,
                      style: Fonts.poppins.copyWith(
                        fontSize: 12,
                        color: MainColors.textContentGray,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            InkWell(
              onTap: () {
                onExpandTap(e);
              },
              child: Icon(
                expandedWidgets.contains(e)
                    ? Icons.keyboard_arrow_up
                    : Icons.keyboard_arrow_down,
              ),
            ),
          ],
        ),
        if (expandedWidgets.contains(e))
          Container(
            margin: const EdgeInsets.only(top: 12),
            width: MediaQuery.of(context).size.width - 32,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: MainColors.backgroundAlt,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Email',
                  style: Fonts.poppins.copyWith(
                    fontSize: 12,
                    color: MainColors.textContentGray,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  e.email,
                  style: Fonts.poppins.copyWith(
                    fontSize: 14,
                    color: MainColors.textContentBlack,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Phone Number',
                  style: Fonts.poppins.copyWith(
                    fontSize: 12,
                    color: MainColors.textContentGray,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  e.phoneNumber,
                  style: Fonts.poppins.copyWith(
                    fontSize: 14,
                    color: MainColors.textContentBlack,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Address',
                  style: Fonts.poppins.copyWith(
                    fontSize: 12,
                    color: MainColors.textContentGray,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  e.address,
                  style: Fonts.poppins.copyWith(
                    fontSize: 14,
                    color: MainColors.textContentBlack,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        Container(
          margin: const EdgeInsets.only(top: 12, bottom: 16),
          height: 1,
          color: MainColors.borderGray,
        ),
      ],
    );
  }
}
