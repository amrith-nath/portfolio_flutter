import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_amr/utils/colors.dart';

class KFonts {
  static final baseStyle = GoogleFonts.montserrat();
  static final navActionStyle = GoogleFonts.plusJakartaSans(
    fontWeight: FontWeight.w600,
    color: KColors.blackSecondary,
  );
  static final headStyle = GoogleFonts.plusJakartaSans(
    fontWeight: FontWeight.w800,
    color: KColors.blackSecondary,
  );
  static final subHeadStyle = GoogleFonts.plusJakartaSans(
    color: KColors.blackSecondary,
  );

  static final normalStyle = GoogleFonts.plusJakartaSans(
    color: KColors.blackSecondary,
  );
}
