import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    required this.onSubmit,
    this.hint = 'Search company, vacancy',
    this.disabled = false,
    Key? key,
  }) : super(key: key);

  final bool disabled;
  final String hint;
  final VoidCallback onSubmit;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34,
      padding: const EdgeInsets.only(left: 4, right: 4, top: 1, bottom: 1),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 240, 240, 240),
        borderRadius: BorderRadius.all(Radius.circular(7)),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.search,
            color: Colors.grey,
          ),
          const SizedBox(width: 5),
          Expanded(
            child: TextField(
              readOnly: disabled,
              decoration: InputDecoration(
                hintText: hint,
                hintStyle: const TextStyle(
                    color: Color.fromARGB(255, 194, 194, 194), fontSize: 16),
                contentPadding: const EdgeInsets.only(bottom: 14),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
