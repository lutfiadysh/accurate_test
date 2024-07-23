import 'package:accurate_lutfi/core/theme/fonts.dart';
import 'package:accurate_lutfi/core/theme/main_colors.dart';
import 'package:accurate_lutfi/data/entities/city_models/city_models.dart';
import 'package:accurate_lutfi/presentation/blocs/create_user_bloc/create_user_bloc.dart';
import 'package:accurate_lutfi/presentation/pages/user/user_page.dart';
import 'package:accurate_lutfi/presentation/widgets/city/city_bottom_sheet_widget.dart';
import 'package:accurate_lutfi/presentation/widgets/create_user/custom_formfield_widget.dart';
import 'package:accurate_lutfi/presentation/widgets/create_user/dropdown_formfield_widget.dart';
import 'package:accurate_lutfi/presentation/widgets/create_user/success_snackbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateUserPage extends StatefulWidget {
  const CreateUserPage({super.key});

  @override
  State<CreateUserPage> createState() => _CreateUserPageState();
}

class _CreateUserPageState extends State<CreateUserPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController cityController = TextEditingController();

  var createUserBloc = CreateUserBloc();
  List<CityData> city = [];
  CityData? selectedCity;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => createUserBloc..add(FetchCreateUserResources()),
      child: BlocConsumer<CreateUserBloc, CreateUserState>(
        listener: (context, state) {
          if (state is FetchCreateUserResourcesSuccess) {
            setState(() {
              city.clear();
              for (var e in state.city.data) {
                city.add(e);
              }
            });
          }
          if (state is SubmitUserSuccess) {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => const UserPage()));
            SuccessSnackbar.showSuccessSnackbar(context,
                title: 'Create user success!');
          }
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              surfaceTintColor: Colors.white,
              leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 15,
                  color: MainColors.textContentBlack,
                ),
              ),
              actions: [
                InkWell(
                  onTap: () {
                    createUserBloc.add(SubmitUser(
                        address: addressController.text,
                        city: cityController.text,
                        email: emailController.text,
                        name: nameController.text,
                        phoneNumber: phoneNumberController.text));
                  },
                  child: Container(
                    margin: const EdgeInsets.only(right: 16),
                    child: Text(
                      "Save",
                      style: Fonts.poppins.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: MainColors.textContentGray,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            body: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Column(
                children: [
                  CustomFormFieldWidget(
                    hint: 'Name',
                    controller: nameController,
                  ),
                  CustomFormFieldWidget(
                    hint: 'Address',
                    maxLines: 3,
                    controller: addressController,
                  ),
                  CustomFormFieldWidget(
                    hint: 'Email',
                    type: TextInputType.emailAddress,
                    controller: emailController,
                  ),
                  CustomFormFieldWidget(
                    hint: 'Phone Number',
                    type: TextInputType.number,
                    controller: phoneNumberController,
                  ),
                  DropdownFormsWidget(
                    onTap: () {
                      CityBottomSheetWidget.showCityBottomSheet(
                        context,
                        cityList: city,
                        onCitySelected: (val) {
                          Navigator.pop(context);
                          setState(() {
                            selectedCity = val;
                            cityController.text = val.name;
                          });
                        },
                        onResetTap: () {},
                        showResetButton: false,
                      );
                    },
                    label: 'City',
                    controller: cityController,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
