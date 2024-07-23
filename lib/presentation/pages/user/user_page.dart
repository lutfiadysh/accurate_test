import 'package:accurate_lutfi/core/theme/fonts.dart';
import 'package:accurate_lutfi/core/theme/main_colors.dart';
import 'package:accurate_lutfi/data/entities/user_models/user_models.dart';
import 'package:accurate_lutfi/presentation/blocs/user_bloc/user_bloc.dart';
import 'package:accurate_lutfi/presentation/widgets/user/search_user_form_widget.dart';
import 'package:accurate_lutfi/presentation/widgets/user/user_list_header.dart';
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                  setState(() {
                                    if (expandedWidgets.contains(e)) {
                                      expandedWidgets.remove(e);
                                    } else {
                                      expandedWidgets.add(e);
                                    }
                                  });
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
