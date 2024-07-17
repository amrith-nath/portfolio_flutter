import 'package:flutter/material.dart';
import 'package:portfolio_amr/utils/fonts.dart';

class NavbarButton extends StatelessWidget {
  const NavbarButton({
    super.key,
    required this.onClick,
    required this.label,
    this.isSelected = false,
    this.color,
  });
  final String label;
  final Function() onClick;
  final bool isSelected;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onClick,
        style: TextButton.styleFrom(
            surfaceTintColor: isSelected ? Colors.grey.shade400 : null),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              label,
              style: KFonts.navActionStyle.copyWith(
                color: color,
              ),
            ),
          ],
        ));
  }
}
