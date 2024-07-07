import 'package:flutter/material.dart';
import 'package:portfolio_amr/utils/colors.dart';
import 'package:portfolio_amr/utils/extensions.dart';
import 'package:portfolio_amr/utils/fonts.dart';
import 'package:portfolio_amr/utils/keys.dart';
import 'package:portfolio_amr/views/layout/responsive_data.dart';
import 'package:portfolio_amr/views/widgets/navbar_button.dart';
import 'package:portfolio_amr/views/widgets/product_button.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:simple_icons/simple_icons.dart';

class ScreenLanding extends StatelessWidget {
  const ScreenLanding({super.key});

  @override
  Widget build(BuildContext context) {
    var kResp = ResponsiveData(context);

    var isMobile = kResp.isSmallScreen;
    List<Widget> navigationActions = isMobile
        ? [
            IconButton(
              icon: const Icon(
                Icons.more_horiz_rounded,
              ),
              onPressed: () {},
            ),
            10.vw,
          ]
        : [
            NavbarButton(
              onClick: () {},
              label: "Home",
              isSelected: true,
            ),
            NavbarButton(onClick: () {}, label: "About"),
            NavbarButton(onClick: () {}, label: "Skills"),
            NavbarButton(onClick: () {}, label: "Games"),
            NavbarButton(onClick: () {}, label: "Experience"),
            NavbarButton(onClick: () {}, label: "Contact"),
            50.vw,
          ];

    return Scaffold(
      key: landingScaffoldKey,
      backgroundColor: KColors.bgColor,
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0.5,
        toolbarHeight: 90,
        backgroundColor: KColors.bgColor,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            kResp.resData(mob: 10, web: 40).vw,
            const CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('images/profile.JPG'),
            ),
          ],
        ),
        centerTitle: false,
        actions: navigationActions,
      ),
      body: SafeArea(
        minimum:
            EdgeInsets.symmetric(horizontal: kResp.resData(mob: 20, web: 50)),
        child: ListView(
          children: [
            Container(
              // color: Colors.black87,
              width: double.infinity,
              height: MediaQuery.of(context).size.height - 90,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GradientText(
                    "Amrith Nath.",
                    style: KFonts.headStyle.copyWith(
                      fontSize: 72,
                      height: 1.1,
                    ),
                    colors: const [
                      Color(0xff2B84FC),
                      Color(0xff6A5FE3),
                      Color(0xffB16CEA)
                    ],
                  ),
                  Text(
                    'Frontend Engineer,',
                    style: KFonts.headStyle.copyWith(
                      height: 1.2,
                      fontSize: 70,
                    ),
                  ),
                  Text(
                    'Fullstack Developer,',
                    style: KFonts.headStyle.copyWith(
                      fontSize: 70,
                      height: 1,
                    ),
                  ),
                  15.vh,
                  Text(
                    "I do web stuff, apps and tools. Mostly Flutter, Go and Rust. I'm also passionate\nabout designing and improving the user experience of digital products.",
                    style: KFonts.subHeadStyle.copyWith(
                      fontSize: 20,
                      color: const Color(0xff5E6282),
                    ),
                  ),
                  // 10.vh,
                  SizedBox(
                    height: 80,
                    width: MediaQuery.of(context).size.width / 6,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ProductButton(
                            icon: SimpleIcons.github,
                            color: SimpleIconColors.github,
                            url: "https://github.com/amrith-nath"),
                        ProductButton(
                            icon: SimpleIcons.instagram,
                            color: SimpleIconColors.instagram,
                            url:
                                "https://www.instagram.com/_a.m.r.?igsh=MXVxMXhubXhyZGZtbA=="),
                        ProductButton(
                            icon: SimpleIcons.x,
                            color: SimpleIconColors.x,
                            url:
                                "https://x.com/amr_nth_?t=n6ykbVb8ZqieANLIR_LZtg&s=08"),
                        ProductButton(
                            icon: SimpleIcons.linkedin,
                            color: SimpleIconColors.linkedin,
                            url:
                                "https://www.linkedin.com/in/amrith-nath-15552722a?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app"),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
