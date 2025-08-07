import 'package:first_flutter_project/styles/app_colors.dart';
import 'package:flutter/material.dart';

class InfoCardWidget extends StatelessWidget {
  const InfoCardWidget({
    super.key, 
    required this.color, 
    required this.iconData, 
    required this.title, 
    required this.subtitle,
  });

  final Color color;
  final IconData iconData;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: AppColors.lightGrey,
            blurRadius: 20
          )
        ]
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              gradient: LinearGradient(
                begin: AlignmentDirectional.topStart,
                end: AlignmentDirectional.bottomEnd,
                colors: [
                  color,
                  color.withAlpha((0.7*255).toInt())
                ]
              )
            ),
            child: Icon(
              iconData,
              size: 30,
              color: Colors.white,
            ),
          ),

          SizedBox(width: 15,),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold
                ),
              ),

              Text(
                subtitle,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey
                ),
              ),
            ],
          )

        ],
      ),
    );
  }
}