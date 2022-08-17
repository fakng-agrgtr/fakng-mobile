import 'package:flutter/material.dart';

class TagsWidget extends StatefulWidget {
  const TagsWidget({Key? key}) : super(key: key);

  @override
  State<TagsWidget> createState() => _TagsWidgetState();
}

class _TagsWidgetState extends State<TagsWidget> {
  int selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    final list = [
      'Apple',
      'Uber',
      'Amazon',
      'Google',
      'Netflix',
      'Facebook',
    ];

    return SizedBox(
      height: 30,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: (context, index) {
          return _TagWidget(
            title: list[index],
            isSelected: selectedItem == index,
            onTap: () {
              setState(() {
                selectedItem = index;
              });
            },
          );
        },
      ),
    );
  }
}

class _TagWidget extends StatelessWidget {
  const _TagWidget({
    required this.title,
    required this.onTap,
    this.isSelected = false,
    Key? key,
  }) : super(key: key);

  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      overlayColor: MaterialStateProperty.all(Colors.transparent),
      highlightColor: Colors.transparent,
      child: Card(
        elevation: 0,
        color: Colors.white,
        margin: const EdgeInsets.only(right: 15),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                color: Color(0xFFBDBDBD),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
