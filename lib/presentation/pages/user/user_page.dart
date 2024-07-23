import 'package:accurate_lutfi/core/theme/fonts.dart';
import 'package:accurate_lutfi/core/theme/main_colors.dart';
import 'package:accurate_lutfi/data/entities/city_models/city_models.dart';
import 'package:accurate_lutfi/data/entities/user_models/user_models.dart';
import 'package:accurate_lutfi/presentation/blocs/user_bloc/user_bloc.dart';
import 'package:accurate_lutfi/presentation/widgets/city/city_bottom_sheet_widget.dart';
import 'package:accurate_lutfi/presentation/widgets/user/search_user_form_widget.dart';
import 'package:accurate_lutfi/presentation/widgets/user/user_list_header.dart';
import 'package:accurate_lutfi/presentation/widgets/user/user_tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  var userBloc = UserBloc();
  List<UserData> expandedWidgets = [];
  List<UserData> users = [];
  CityData? selectedCity;
  bool isAscending = true;
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => userBloc..add(FetchUserResources()),
      child: BlocConsumer<UserBloc, UserState>(
        listener: (context, state) {
          if (state is FetchUserResourcesSuccess) {
            setState(() {
              users.clear();
              for (var e in state.users.data) {
                users.add(e);
              }
              users.sort((a, b) =>
                  a.name.toLowerCase().compareTo(b.name.toLowerCase()));
            });
          }
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: UserListHeader(
              searchController: searchController,
              onSortTap: sortUserList,
              onCityFilterTap: () {
                if (state is FetchUserResourcesSuccess) {
                  CityBottomSheetWidget.showCityBottomSheet(
                    context,
                    onResetTap: () {
                      Navigator.pop(context);
                      setState(() {
                        selectedCity = null;
                        users.clear();
                        for (var e in state.users.data) {
                          users.add(e);
                        }
                        sortUserList();
                      });
                    },
                    onCitySelected: (val) {
                      Navigator.pop(context);
                      setState(() {
                        selectedCity = val;
                        users = state.users.data
                            .where((e) => e.city == val.name)
                            .toList();
                        sortUserList();
                      });
                    },
                    cityList: state.city.data,
                  );
                }
              },
              onChanged: (val) {
                if (state is FetchUserResourcesSuccess) {
                  setState(() {
                    users = state.users.data
                        .where((e) =>
                            e.name.toLowerCase().contains(val.toLowerCase()))
                        .toList();
                    sortUserList();
                  });
                }
              },
            ),
            body: state is FetchUserResourcesSuccess
                ? ListView.builder(
                    shrinkWrap: true,
                    itemCount: users.length,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    itemBuilder: (context, index) {
                      var e = users[index];
                      return UserTileWidget(
                          e: e,
                          expandedWidgets: expandedWidgets,
                          onExpandTap: (val) {
                            setState(() {
                              if (expandedWidgets.contains(e)) {
                                expandedWidgets.remove(e);
                              } else {
                                expandedWidgets.add(e);
                              }
                            });
                          });
                    })
                : const Center(child: CircularProgressIndicator()),
          );
        },
      ),
    );
  }

  void sortUserList() {
    setState(() {
      if (isAscending) {
        users.sort(
            (a, b) => b.name.toLowerCase().compareTo(a.name.toLowerCase()));
        isAscending = false;
      } else {
        users.sort(
            (a, b) => a.name.toLowerCase().compareTo(b.name.toLowerCase()));
        isAscending = true;
      }
    });
  }
}
