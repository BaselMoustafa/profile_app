import 'package:first_flutter_project/helpers/assets_helper.dart';
import 'package:first_flutter_project/widgets/social_media_button.dart';
import 'package:flutter/material.dart';

class SocialMediaContactsWidget extends StatelessWidget {
  const SocialMediaContactsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SocialMediaButton(
          imagePath: AssetsHelper.udemy, 
          url: "https://www.udemy.com/user/basel-moustafa-sielem/",
        ),

        SocialMediaButton(
          imagePath: AssetsHelper.youtube, 
          url: "https://www.youtube.com/@baselmoustafasielemsoliman6511",
        ),

        SocialMediaButton(
          imagePath: AssetsHelper.linkedIn, 
          url: "https://www.linkedin.com/in/basel-moustafa-943050248/",
        ),

        SocialMediaButton(
          imagePath: AssetsHelper.github, 
          url: "https://github.com/BaselMoustafa",
        ),
      ],

    );
  }
}