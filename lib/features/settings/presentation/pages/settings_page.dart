import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:fakng_mobile/core/presentation/widgets/navbar_widget.dart';
import 'package:fakng_mobile/core/resources/sizes.dart';
import 'package:fakng_mobile/core/resources/themes/dark_theme.dart';
import 'package:fakng_mobile/core/resources/themes/light_theme.dart';
import 'package:fakng_mobile/features/settings/presentation/widgets/link_widget.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final linksData = const [
    LinkWidgetData(
      text: 'My github',
      url: 'https://github.com/p-zahar',
    ),
    LinkWidgetData(
      text: 'Project github',
      url: 'https://github.com/fakng-agrgtr',
    ),
    LinkWidgetData(
      text: 'Mobile app github',
      url: 'https://github.com/fakng-agrgtr/fakng-mobile',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
          actions: [
            ThemeSwitcher(
              builder: (context) {
                final brightness =
                    ThemeModelInheritedNotifier.of(context).theme.brightness;
                return IconButton(
                  onPressed: () {
                    ThemeSwitcher.of(context).changeTheme(
                      theme: brightness == Brightness.light
                          ? darkAppTheme
                          : lightAppTheme,
                      isReversed: brightness == Brightness.light,
                    );
                  },
                  icon: Icon(
                    brightness == Brightness.light
                        ? Icons.brightness_1
                        : Icons.brightness_3,
                    size: 25,
                  ),
                );
              },
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: ListView(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            children: [
              ...linksData.map((data) => LinkWiget(data: data)).toList(),
            ],
          ),
        ),
        bottomNavigationBar: const NavbarWidget(selectedIndex: 2),
      ),
    );
  }
}
