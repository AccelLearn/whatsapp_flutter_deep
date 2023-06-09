import 'package:flutter/material.dart';
import 'package:flutter_deep/common/extension/custom_theme_extension.dart';
import 'package:flutter_deep/common/utils/coloors.dart';
import 'package:flutter_deep/common/widgets/custom_elevated_button.dart';
import 'package:flutter_deep/feature/auth/widgets/custom_text_field.dart';
import 'package:country_picker/country_picker.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController countryNameController;
  late TextEditingController countryCodeController;
  late TextEditingController phoneNumberController;

  @override
  void initState() {
    super.initState();
    countryNameController = TextEditingController(text: 'China');
    countryCodeController = TextEditingController(text: '+86');
    phoneNumberController = TextEditingController();
  }

  @override
  void dispose() {
    countryNameController.dispose();
    countryCodeController.dispose();
    phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        // 阴影效果
        elevation: 0,
        title: Text(
          'Enter your phone number',
          style: TextStyle(color: context.theme.authAppBarTextColor),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              splashColor: Colors.transparent,
              splashRadius: 22,
              iconSize: 22,
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(minWidth: 40),
              icon: Icon(
                Icons.more_vert,
                color: context.theme.greyColor,
              ))
        ],
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'WhatsApp will need to verify your phone number. ',
                style: TextStyle(color: context.theme.greyColor, height: 1.5),
                children: [
                  TextSpan(
                      text: "What's my number?",
                      style: TextStyle(color: context.theme.blueColor))
                ],
              )),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: CustomTextField(
            onTap: () => showCountryPicker(
              context: context,
              favorite: ['CN'],
              countryListTheme: const CountryListThemeData(
                flagSize: 25,
                bottomSheetHeight: 500, // Optional. Country list modal height
              ),
              showSearch: false,
              showPhoneCode:
                  true, // optional. Shows phone code before the country name.
              onSelect: (Country country) {
                countryNameController.text = country.name;
                countryCodeController.text = country.phoneCode;
              },
            ),
            controller: countryNameController,
            readOnly: true,
            suffixIcon:
                const Icon(Icons.arrow_drop_down, color: Coloors.greenDark),
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Row(
            children: [
              SizedBox(
                width: 70,
                child: CustomTextField(
                  onTap: () {},
                  controller: countryCodeController,
                  readOnly: true,
                  prefixText: '+',
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: CustomTextField(
                  onTap: () {},
                  controller: phoneNumberController,
                  hintText: 'Phone number',
                  textAlign: TextAlign.left,
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Text(
          'Carrier charges may apply',
          style: TextStyle(color: context.theme.greyColor),
        ),
      ]),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomElevatedButton(
        onPressed: () {},
        text: 'Next',
      ),
    );
  }
}
