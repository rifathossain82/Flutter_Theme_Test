import 'package:flutter/material.dart';
import 'package:flutter_theme_test/src/core/extensions/build_context_extension.dart';
import 'package:flutter_theme_test/src/core/theme/controller/theme_controller.dart';
import 'package:flutter_theme_test/src/core/utils/color.dart';
import 'package:flutter_theme_test/src/core/widgets/k_button.dart';
import 'package:flutter_theme_test/src/core/widgets/k_outlined_button.dart';
import 'package:flutter_theme_test/src/core/widgets/k_search_field.dart';
import 'package:flutter_theme_test/src/core/widgets/k_text_form_field.dart';
import 'package:get/get.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final themeController = Get.find<ThemeController>();
  final nameController = TextEditingController();
  final searchController = TextEditingController();
  bool isAgree = false;
  ThemeMode? selectedThemeMode;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Homepage'),
          actions: [
            Switch(
              value: themeController.themeMode == ThemeMode.dark,
              onChanged: (value) {
                themeController.toggleTheme(value);
              },
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton.small(
          onPressed: () {},
          child: const Icon(
            Icons.refresh,
          ),
        ),
        body: RefreshIndicator(
          onRefresh: () async {},
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Hello World!',
                    style: context.textTheme.titleLarge,
                  ),
                  Text(
                    'Alhamdulillah For Everything!',
                    style: context.textTheme.headline5?.copyWith(
                      color: context.isDark ? kWhite : kDeepOrange,
                    ),
                  ),
                  KButton(
                    onPressed: () {},
                    child: Text(
                      'Submit',
                      style: context.buttonTextStyle,
                    ),
                  ),
                  const SizedBox(height: 15),
                  KOutlinedButton(
                    onPressed: () {},
                    child: Text(
                      'Submit',
                      style: context.outlinedButtonTextStyle,
                    ),
                  ),
                  const SizedBox(height: 15),
                  KTextFormFiled(
                    controller: nameController,
                    labelText: 'Name',
                    hintText: 'Type you name',
                    isBorder: true,
                  ),
                  const SizedBox(height: 15),
                  KSearchField(
                    controller: searchController,
                    hintText: 'Type name to search',
                  ),
                  const SizedBox(height: 15),
                  CheckboxListTile(
                    value: isAgree,
                    onChanged: (value) {
                      setState(() {
                        isAgree = !isAgree;
                      });
                    },
                    title: Text(
                      'Agree with Terms & Conditions',
                      style: context.textTheme.caption,
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                    contentPadding: EdgeInsets.zero,
                  ),
                  const SizedBox(height: 15),
                  RadioListTile(
                    value: ThemeMode.light,
                    groupValue: selectedThemeMode,
                    onChanged: (value) {
                      setState(() {
                        selectedThemeMode = value;
                      });
                    },
                    title: const Text('Light'),
                    contentPadding: EdgeInsets.zero,
                  ),
                  RadioListTile(
                    value: ThemeMode.dark,
                    groupValue: selectedThemeMode,
                    onChanged: (value) {
                      setState(() {
                        selectedThemeMode = value;
                      });
                    },
                    title: const Text('Dark'),
                    contentPadding: EdgeInsets.zero,
                  ),
                  RadioListTile(
                    value: ThemeMode.system,
                    groupValue: selectedThemeMode,
                    onChanged: (value) {
                      setState(() {
                        selectedThemeMode = value;
                      });
                    },
                    title: const Text('System'),
                    contentPadding: EdgeInsets.zero,
                  ),
                  const SizedBox(height: 15),
                  Card(
                    child: Container(
                      height: 120,
                      width: context.screenWidth,
                      alignment: Alignment.center,
                      child: const Text('Hello Rifat!'),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    height: 120,
                    width: context.screenWidth,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      'Hello Rifat!',
                      style: context.textTheme.titleLarge?.copyWith(
                        color: kWhite,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  ListTile(
                    onTap: (){},
                    title: const Text('Rifat Hossain'),
                    subtitle: const Text('Flutter App Developer'),
                    leading: const Icon(Icons.person),
                    trailing: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 15,
                    ),
                    contentPadding: EdgeInsets.zero,
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(Icons.location_on),
                      Icon(Icons.favorite),
                      Icon(Icons.account_circle),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
