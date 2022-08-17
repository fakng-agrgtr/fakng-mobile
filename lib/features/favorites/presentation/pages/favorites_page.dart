import 'package:fakng_mobile/core/widgets/navbar_widget.dart';
import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
      ),
      body: const Center(
        child: Text('...'),
      ),
      bottomNavigationBar: const NavbarWidget(selectedIndex: 1),
    );
  }
}
