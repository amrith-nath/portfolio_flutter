import 'package:flutter/material.dart';

class ResponsiveData {
  ResponsiveData(this.context);

  final BuildContext context;

  MediaQueryData getMediaQueryData() {
    return MediaQuery.of(context);
  }

  double get getScreenWidth {
    return getMediaQueryData().size.width;
  }

  double get getScreenHeight {
    return getMediaQueryData().size.height;
  }

  bool get isSmallScreen {
    return getScreenWidth < 730;
  }

  bool get isMediumScreen {
    return getScreenWidth >= 730 && getScreenWidth < 1000;
  }

  bool get isLargeScreen {
    return getScreenWidth >= 1000;
  }

  double resData({required double mob, double tab = 0, required double web}) {
    if (isSmallScreen) {
      return mob;
    } else if (isMediumScreen) {
      if (tab == 0) {
        return mob;
      } else {
        return tab;
      }
    } else {
      return web;
    }
  }

  Widget resWidget({required Widget mob, Widget? tab, required Widget web}) {
    if (isSmallScreen) {
      return mob;
    } else if (isMediumScreen) {
      if (tab == null) {
        return const SizedBox.shrink();
      } else {
        return tab;
      }
    } else {
      return web;
    }
  }
}
