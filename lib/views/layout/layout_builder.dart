import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class KLayoutBuilder extends StatelessWidget {
  const KLayoutBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
          return Container(color: Colors.blue);
        }

        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return Container(color: Colors.red);
        }

        if (sizingInformation.deviceScreenType == DeviceScreenType.watch) {
          return Container(color: Colors.yellow);
        }

        return Container(color: Colors.purple);
      },
    );
  }
}
