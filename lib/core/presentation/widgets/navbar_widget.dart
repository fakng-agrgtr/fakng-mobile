import 'package:fakng_mobile/core/presentation/router/routes_names.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavbarWidget extends StatelessWidget {
  final int selectedIndex;

  const NavbarWidget({
    required this.selectedIndex,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
      padding: const EdgeInsets.only(top: 10),
      child: BottomNavigationBar(
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          String? route;
          switch (value) {
            case 0:
              route = RoutesNames.vacancies;
              break;
            case 1:
              route = RoutesNames.favorites;
              break;
            case 2:
              route = RoutesNames.settings;
              break;
            default:
          }

          if (route != null) context.pushNamed(route);
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.list_alt_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
        ],
      ),
    );
  }
}
