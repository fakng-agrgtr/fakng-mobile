import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarBackButtonWidget extends StatelessWidget {
  final VoidCallback? onTap;

  const AppBarBackButtonWidget({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: const EdgeInsets.only(left: 7),
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      icon: Row(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 27,
          ),
        ],
      ),
      onPressed: onTap ?? () => Navigator.of(context).pop(),
    );
  }
}
