import 'package:flutter/material.dart';
import 'package:kabil_s_application1/core/utils/size_utils.dart';
import 'package:kabil_s_application1/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body style
  static get bodyLargeLexendDeca => theme.textTheme.bodyLarge!.lexendDeca;
  static get bodyLargeOnPrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  // Display text style
  static get displayMediumMaturaMTScriptCapitalsOnPrimary =>
      theme.textTheme.displayMedium!.maturaMTScriptCapitals.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 41.fSize,
      );
  // Headline text style
  static get headlineLargeBlack900 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 30.fSize,
        fontWeight: FontWeight.w400,
      );
  static get headlineLargeBluegray10001 =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.blueGray10001,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get salsa {
    return copyWith(
      fontFamily: 'Salsa',
    );
  }

  TextStyle get sairaStencilOne {
    return copyWith(
      fontFamily: 'Saira Stencil One',
    );
  }

  TextStyle get lexendDeca {
    return copyWith(
      fontFamily: 'Lexend Deca',
    );
  }

  TextStyle get leckerliOne {
    return copyWith(
      fontFamily: 'Leckerli One',
    );
  }

  TextStyle get lemon {
    return copyWith(
      fontFamily: 'Lemon',
    );
  }

  TextStyle get maturaMTScriptCapitals {
    return copyWith(
      fontFamily: 'Matura MT Script Capitals',
    );
  }
}
