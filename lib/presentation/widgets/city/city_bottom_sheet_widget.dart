import 'package:accurate_lutfi/core/theme/fonts.dart';
import 'package:accurate_lutfi/core/theme/main_colors.dart';
import 'package:accurate_lutfi/data/entities/city_models/city_models.dart';
import 'package:flutter/material.dart';

class CityBottomSheetWidget {
  static void showCityBottomSheet(
    BuildContext context, {
    required List<CityData> cityList,
    required Function(CityData item) onCitySelected,
    required Function() onResetTap,
  }) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        useSafeArea: true,
        backgroundColor: Colors.white,
        showDragHandle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        builder: (context) {
          return StatefulBuilder(builder: (context, setstate) {
            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Choose City",
                                style: Fonts.poppins.copyWith(
                                  fontSize: 16,
                                  color: MainColors.textContentBlack,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              ElevatedButton(
                                onPressed: onResetTap,
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size(
                                      MediaQuery.of(context).size.width / 5,
                                      30),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  backgroundColor: Colors.deepPurple,
                                ),
                                child: Text(
                                  'Reset',
                                  style: Fonts.poppins.copyWith(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Column(
                            children: cityList.map((e) {
                              return InkWell(
                                onTap: () {
                                  onCitySelected(e);
                                },
                                child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 6),
                                    padding: const EdgeInsets.all(12),
                                    width:
                                        MediaQuery.of(context).size.width - 32,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                      boxShadow: [
                                        BoxShadow(
                                          offset: const Offset(0, 2),
                                          color: Colors.black.withOpacity(.12),
                                          blurRadius: 12,
                                        )
                                      ],
                                    ),
                                    child: Text(e.name)),
                              );
                            }).toList(),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          });
        });
  }
}
