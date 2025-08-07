import 'package:first_flutter_project/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton({
    super.key,
    required this.imagePath,
    required this.url,

  });

  final String imagePath;
  final String url;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        launchUrl(
          Uri.parse(url)
        );
      },
      child: Container(
        height: 60,
        width: 60,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: AppColors.lightGrey,
              blurRadius: 20
            )
          ]
        ),
        child: Image.asset(imagePath),
      ),
    );
  }
}