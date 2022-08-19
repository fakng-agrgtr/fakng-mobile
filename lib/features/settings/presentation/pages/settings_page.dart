import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:fakng_mobile/core/presentation/widgets/navbar_widget.dart';
import 'package:fakng_mobile/core/resources/sizes.dart';
import 'package:fakng_mobile/core/resources/themes/dark_theme.dart';
import 'package:fakng_mobile/core/resources/themes/light_theme.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

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
            children: [],
          ),
        ),
        bottomNavigationBar: const NavbarWidget(selectedIndex: 2),
      ),
    );
  }
}
