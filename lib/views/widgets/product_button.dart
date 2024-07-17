import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProductButton extends StatelessWidget {
  const ProductButton({
    super.key,
    required this.icon,
    required this.color,
    required this.url,
  });

  final IconData icon;
  final Color color;
  final String url;

  @override
  Widget build(BuildContext context) {
    final Uri uri = Uri.parse(url);
    return IconButton(
      icon: Icon(
        icon,
        color: color,
        size: 20,
      ),
      style: IconButton.styleFrom(
          backgroundColor: color.withAlpha(15),
          iconSize: 20,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(200),
            side: BorderSide.none,
          )),
      onPressed: () async {
        await launchUrl(uri);
      },
    );
  }
}
