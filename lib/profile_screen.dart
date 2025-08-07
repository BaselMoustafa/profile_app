import 'package:first_flutter_project/helpers/assets_helper.dart';
import 'package:first_flutter_project/styles/app_colors.dart';
import 'package:first_flutter_project/widgets/profile_image_widget.dart';
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

                GestureDetector(
                  onTap: onTap,
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
                    child: Image.asset(AssetsHelper.udemy),
                  ),
                )
              ],
            ),
          ),
        ),
      ),    
    );
  }

  void onTap(){
    print("Widget Tapped");
  }
}