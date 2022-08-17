import 'package:fakng_mobile/core/widgets/navbar_widget.dart';
import 'package:fakng_mobile/core/widgets/search_widget.dart';
import 'package:fakng_mobile/features/vacancies/presentation/widgets/tags_widget.dart';
import 'package:fakng_mobile/features/vacancies/presentation/widgets/vacancy_card_widget.dart';
import 'package:flutter/material.dart';

class VacanciesPage extends StatelessWidget {
  const VacanciesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          children: [
            const SizedBox(height: 30),
            SearchWidget(
              onSubmit: () {},
            ),
            const SizedBox(height: 10),
            const TagsWidget(),
            const SizedBox(height: 30),
            const Text(
              'Vacancies',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => const VacancyCardWidget(),
              itemCount: 10,
            ),
          ],
        ),
      ),
      bottomNavigationBar: const NavbarWidget(selectedIndex: 0),
    );
  }
}
