import 'package:flutter/material.dart';

class UIHelper {
  static const verticalSpaceSmall = SizedBox(
    height: 8,
  );
  static const verticalSpaceMedium = SizedBox(
    height: 16,
  );

  static const verticalSpaceLarge = SizedBox(
    height: 24,
  );

  static const horizontalSpaceSmall = SizedBox(
    width: 8,
  );

  static const horizontalSpaceMedium = SizedBox(
    width: 16,
  );

  static const horizontalSpaceLarge = SizedBox(
    width: 24,
  );

  static SizedBox customVerticalSpace(double height) => SizedBox(
        height: height,
      );

  static SizedBox customHorizontalSpace(double width) => SizedBox(
        width: width,
      );
}
