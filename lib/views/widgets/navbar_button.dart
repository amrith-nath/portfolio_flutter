import 'package:flutter/material.dart';
import 'package:portfolio_amr/utils/fonts.dart';

class NavbarButton extends StatelessWidget {
  const NavbarButton({
    super.key,
    required this.onClick,
    required this.label,
    this.isSelected = false,
  });
  final String label;
  final Function() onClick;
  final bool isSelected;
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
              style: KFonts.navActionStyle,
            ),
          ],
        ));
  }
}
