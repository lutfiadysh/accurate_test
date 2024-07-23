import 'package:accurate_lutfi/core/theme/fonts.dart';
import 'package:accurate_lutfi/core/theme/main_colors.dart';
import 'package:accurate_lutfi/presentation/widgets/create_user/custom_formfield_widget.dart';
import 'package:accurate_lutfi/presentation/widgets/create_user/dropdown_formfield_widget.dart';
import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
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
          Container(
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
              onTap: () {},
              label: 'City',
              controller: cityController,
            ),
          ],
        ),
      ),
    );
  }
}
