import 'package:flutter/material.dart';
import 'package:portfolio_amr/utils/extensions.dart';

import '../../utils/fonts.dart';

class SkillIcon extends StatelessWidget {
  const SkillIcon({super.key, required this.icon, required this.name});

  final IconData icon;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 40,
            color: const Color(0xff5E6282),
          ),
          10.vh,
          Text(
            name,
            style: KFonts.normalStyle.copyWith(
              color: const Color(0xff5E6282),
              fontWeight: FontWeight.bold,
              fontSize: 10,
            ),
          )
        ],
      ),
    );
  }
}
