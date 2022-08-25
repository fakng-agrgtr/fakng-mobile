import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:fakng_mobile/core/presentation/widgets/appbar_back_button.dart';
import 'package:fakng_mobile/core/presentation/widgets/navbar_widget.dart';
import 'package:fakng_mobile/core/resources/sizes.dart';
import 'package:flutter/material.dart';

class VacancyPage extends StatelessWidget {
  const VacancyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Vacancy'),
          leading: AppBarBackButtonWidget(),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: ListView(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            children: [
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'SAP UI/UX Engineer',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              r'250K $ / year',
                            ),
                          ],
                        ),
                        IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {},
                          icon: Icon(
                            size: 25,
                            Icons.favorite_border,
                          ),
                        )
                      ],
                    ),
                    const Text(
                      'Apple',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const SizedBox(height: 10),
                    const Text(
                      'Location: Santa Clara Valley (Cupertino), California, United States Software and Services',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(height: 3),
                    const Text(
                      'Knowledge of SAP BTP, SAP CAP, SAP BAS, GIT, DevOps, Node.js',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
