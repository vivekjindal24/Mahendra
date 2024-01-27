import 'package:flutter/material.dart';
import 'package:shiv_shakti/core/app_export.dart';

class AppDecoration {
  // Gradient decorations
  static BoxDecoration get gradientOnPrimaryToLimeB => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(-0.02, 1),
          colors: [
            theme.colorScheme.onPrimary,
            appTheme.lime100B2,
          ],
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder115 => BorderRadius.circular(
        115.h,
      );
  static BorderRadius get circleBorder97 => BorderRadius.circular(
        97.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
