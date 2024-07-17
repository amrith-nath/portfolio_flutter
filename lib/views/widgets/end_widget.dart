import 'package:flutter/material.dart';
import 'package:portfolio_amr/utils/extensions.dart';

class EndWidget extends StatelessWidget {
  const EndWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var icon = const Icon(
      Icons.circle,
      size: 5,
      color: Color(0xff5E6282),
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon,
        10.vw,
        icon,
      ],
    );
  }
}
