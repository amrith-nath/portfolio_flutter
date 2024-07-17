import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio_amr/utils/colors.dart';
import 'package:portfolio_amr/utils/extensions.dart';
import 'package:portfolio_amr/utils/fonts.dart';
import 'package:portfolio_amr/utils/keys.dart';
import 'package:portfolio_amr/views/layout/responsive_data.dart';
import 'package:portfolio_amr/views/widgets/end_widget.dart';
import 'package:portfolio_amr/views/widgets/navbar_button.dart';
import 'package:portfolio_amr/views/widgets/product_button.dart';
import 'package:portfolio_amr/views/widgets/skill_icon_widget.dart';
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
            NavbarButton(onClick: () {}, label: "Skills"),
            NavbarButton(onClick: () {}, label: "Works"),
            NavbarButton(onClick: () {}, label: "Games"),
            NavbarButton(onClick: () {}, label: "Resume"),
            NavbarButton(onClick: () {}, label: "Contact"),
            50.vw,
          ];
    placeHolderWidget(String text) {
      return Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          width: double.infinity,
          height: isMobile ? null : kResp.getScreenHeight / 1.2 - 90,
          child: Center(
            child: Text(
              text,
              style: KFonts.headStyle.copyWith(
                height: 1.2,
                fontSize: kResp.resData(mob: 40, web: 80),
              ),
            ),
          ));
    }

    whatIDoWidget() => SizedBox(
          width: isMobile ? null : kResp.getScreenHeight / 1.2,
          child: Column(
            crossAxisAlignment:
                isMobile ? CrossAxisAlignment.center : CrossAxisAlignment.start,
            children: [
              Text(
                "What I do",
                // textAlign: TextAlign.center,
                style: KFonts.normalStyle.copyWith(
                  height: 1,
                  fontWeight: FontWeight.w500,
                  fontSize: kResp.resData(mob: 25, web: 40),
                ),
              ),
              kResp.resData(mob: 20, web: 30).vh,
              Text(
                "Crazy full stack developer who wants to explore every Tech stack",
                textAlign: isMobile ? TextAlign.center : null,
                style: KFonts.subHeadStyle.copyWith(
                  fontSize: kResp.resData(mob: 15, web: 25),
                  // color: const Color(0xff5E6282),
                ),
              ),
              20.vh,
              const Wrap(
                alignment: WrapAlignment.center,
                children: [
                  SkillIcon(icon: SimpleIcons.adobexd, name: "XD"),
                  SkillIcon(icon: SimpleIcons.figma, name: "Figma"),
                  SkillIcon(icon: SimpleIcons.html5, name: "html-5"),
                  SkillIcon(icon: SimpleIcons.css3, name: "css3"),
                  SkillIcon(icon: SimpleIcons.javascript, name: "JavaScript"),
                  SkillIcon(icon: SimpleIcons.dart, name: "Dart"),
                  SkillIcon(icon: SimpleIcons.flutter, name: "Flutter"),
                  SkillIcon(icon: SimpleIcons.go, name: "GO"),
                  SkillIcon(icon: SimpleIcons.python, name: "Python"),
                  SkillIcon(icon: SimpleIcons.flask, name: "Flask"),
                  SkillIcon(icon: SimpleIcons.linux, name: "Linux"),
                  SkillIcon(
                      icon: SimpleIcons.gitlfs, name: "Git source control"),
                  SkillIcon(icon: SimpleIcons.sqlite, name: "sql-database"),
                  SkillIcon(icon: SimpleIcons.mongodb, name: "MongoDB"),
                  SkillIcon(icon: SimpleIcons.firebase, name: "Firebase"),
                  SkillIcon(icon: SimpleIcons.amazonaws, name: "AWS"),
                  SkillIcon(icon: SimpleIcons.docker, name: "Docker"),
                  SkillIcon(
                      icon: SimpleIcons.digitalocean, name: "DigitalOcean"),
                ],
              ),
              kResp.resData(mob: 20, web: 30).vh,
              Text(
                "⚡Develop highly interactive Front end / User Interfaces for Mobile Applications and web",
                style: KFonts.subHeadStyle.copyWith(
                  fontSize: kResp.resData(mob: 15, web: 20),
                  color: const Color(0xff5E6282),
                ),
              ),
              5.vh,
              Text(
                "⚡Progressive Web Applications (PWA) in normal and SPA stacks",
                style: KFonts.subHeadStyle.copyWith(
                  fontSize: kResp.resData(mob: 15, web: 20),
                  color: const Color(0xff5E6282),
                ),
              ),
              5.vh,
              Text(
                "⚡Integration of third party services such as Firebase / AWS / Digital Ocean",
                style: KFonts.subHeadStyle.copyWith(
                  fontSize: kResp.resData(mob: 15, web: 20),
                  color: const Color(0xff5E6282),
                ),
              ),
            ],
          ),
        );

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
            kResp.resData(mob: 20, web: 0).vh,
            SizedBox(
              // decoration:
              //     BoxDecoration(border: Border.all(color: Colors.black)),
              width: double.infinity,
              height: isMobile ? null : kResp.getScreenHeight / 1.3 - 80,
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GradientText(
                        "Amrith Nath.",
                        style: KFonts.headStyle.copyWith(
                          fontSize: kResp.resData(mob: 45, web: 82),
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
                          fontSize: kResp.resData(mob: 40, web: 80),
                        ),
                      ),
                      Text(
                        'Fullstack Developer,',
                        style: KFonts.headStyle.copyWith(
                          fontSize: kResp.resData(mob: 40, web: 80),
                          height: 1,
                        ),
                      ),
                      kResp.resData(mob: 10, web: 30).vh,
                      Text(
                        "I do web stuff, apps and tools. Mostly Flutter, Go and Rust. I'm also passionate\nabout designing and improving the user experience of digital products.",
                        style: KFonts.subHeadStyle.copyWith(
                          fontSize: kResp.resData(mob: 15, web: 20),
                          color: const Color(0xff5E6282),
                        ),
                      ),
                      10.vh,
                      SizedBox(
                        height: 80,
                        width: kResp.resData(
                            mob: kResp.getScreenWidth - 50,
                            web: kResp.getScreenWidth / 6),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ProductButton(
                              icon: SimpleIcons.github,
                              color: SimpleIconColors.github,
                              url: "https://github.com/amrith-nath",
                            ),
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
                      ),
                    ],
                  ),
                  // Positioned(
                  //     right: 100,
                  //     top: 0,
                  //     child: Lottie.asset("lottie/hello.json",
                  //         width: kResp.getScreenWidth / 1.5))
                ],
              ),
            ),
            isMobile ? const EndWidget() : 0.vw,
            10.vh,
            SizedBox(
              // decoration:
              //     BoxDecoration(border: Border.all(color: Colors.black)),
              width: double.infinity,
              height: isMobile ? null : kResp.getScreenHeight / 1.3 - 90,
              // child: Row(
              //   children: [
              //     const Spacer(),
              //     whatIDoWidget(),
              //   ],
              // ),
              child: isMobile
                  ? Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        30.vh,
                        whatIDoWidget(),
                      ],
                    )
                  : Row(
                      children: [
                        Expanded(child: Lottie.asset("lottie/work.json")),
                        whatIDoWidget(),
                      ],
                    ),
            ),
            placeHolderWidget("Featuured work"),
            placeHolderWidget("Arcade"),
            10.vh,
            Container(
              // color: const Color(0xfff5f7fb),
              height: isMobile ? 300 : kResp.getScreenHeight / 1.3 - 90,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: KColors.whiteSecondary,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            10.vh,
          ],
        ),
      ),
    );
  }
}
