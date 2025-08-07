import 'package:flutter/material.dart';

import '../helpers/assets_helper.dart';
import '../styles/app_colors.dart';

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 85,
      backgroundColor: AppColors.primary,
      child: CircleAvatar(
        radius: 80,
        backgroundColor: AppColors.white,
        child: CircleAvatar(
          radius: 75,
          backgroundImage: AssetImage(AssetsHelper.meImage),
        ),
      ),
    );
  }
}