import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkWidgetData {
  const LinkWidgetData({
    required this.text,
    required this.url,
  });

  final String text;
  final String url;
}

class LinkWiget extends StatelessWidget {
  const LinkWiget({
    required this.data,
    Key? key,
  }) : super(key: key);

  final LinkWidgetData data;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Text(data.text),
      onTap: () async {
        await launchUrl(Uri.parse(data.url));
      },
    );
  }
}
