import 'package:first_flutter_project/styles/app_colors.dart';
import 'package:first_flutter_project/widgets/info_card_widget.dart';
import 'package:first_flutter_project/widgets/profile_image_widget.dart';
import 'package:first_flutter_project/widgets/social_media_contacts_widget.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Center(
          child: Padding(
            padding:EdgeInsetsDirectional.symmetric(
              horizontal: 20
            ),
            child: SingleChildScrollView(
              child: Column(
                spacing: 10,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              
                  SizedBox(height: 35,),
              
                  ProfileImageWidget(),
              
                  Text(
                    "Basel Moustafa",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w800
                    ),
                  ),
              
                  Text(
                    "Flutter Developer",
                    style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 18
                    ),
                  ),
              
                  Text(
                    "Passionate Flutter developer building beautiful, high-performance mobile apps. Love creating smooth, user-focused experiences that make an impact.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                    ),
                  ),
              
                  SizedBox(height: 10,),
              
                  SocialMediaContactsWidget(),
              
                  SizedBox(height: 10,),
              
                  InfoCardWidget(
                    color: Colors.deepPurple,
                    iconData: Icons.work,
                    title: "Experience",
                    subtitle: "3 years of experience",
                  ),
              
                  InfoCardWidget(
                    color: Colors.pink,
                    iconData: Icons.location_city,
                    title: "Location",
                    subtitle: "Alexandria, Egypt",
                  ),
              
                  InfoCardWidget(
                    color: Colors.greenAccent,
                    iconData: Icons.calendar_view_day_rounded,
                    title: "Joined",
                    subtitle: "Jan 2025",
                  ),
              
                  
                ],
              ),
            ),
          ),
        ),
      ),    
    );
  }

}