import 'package:flutter/material.dart';

import '../../common/theme/colors.dart';

Widget buildLeadingImage(bool isPack, double size, String? image) {
  return ClipRRect(
    borderRadius: const BorderRadius.all(Radius.circular(6)),
    child: Container(
      height: size * 0.6,
      width: isPack ? size : size * 0.6,
      color: kTapBorderAssets,
      child: isPack
          ? Image.asset(
              'assets/images/1234.png',
              fit: BoxFit.cover,
            )
          : Image.asset(
              'assets/images/pack_icon.png',
              fit: BoxFit.cover,
            ),
    ),
  );
}
