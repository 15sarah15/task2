import 'package:flutter/material.dart';
import 'package:flutter_task2/Core/App_Color.dart';
import 'package:flutter_task2/Core/App_Text_Style.dart';
import 'package:gap/gap.dart';

class MostRequested extends StatelessWidget {
  const MostRequested({
    super.key,
    required this.image,
    required this.title,
    required this.category,
    required this.time,
    required this.price,
    required this.rating,
  });

  final String image;
  final String title;
  final String category;
  final String time;
  final String price;
  final String rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset(
              image,
              width: double.infinity,
              height: 90,
              fit: BoxFit.cover,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: AppTextStyle.body(fontSize: 17)),

                Gap(3),

                Text(
                  category,
                  style: AppTextStyle.title(
                    fontSize: 11,
                    color: AppColor.colorGray,
                  ),
                ),

                Gap(6),

                Row(
                  children: [
                    Icon(
                      Icons.access_time,
                      size: 13,
                      color: AppColor.colorGray,
                    ),
                    Gap(4),

                    Text(
                      time,
                      style: AppTextStyle.title(
                        fontSize: 10,
                        color: AppColor.colorGray,
                      ),
                    ),
                    Gap(4),

                    Text("•", style: TextStyle(color: AppColor.colorGray)),
                    Gap(4),
                    Icon(
                      Icons.bike_scooter_rounded,
                      size: 13,
                      color: AppColor.colorGray,
                    ),
                    Gap(4),

                    Text(
                      price,
                      style: AppTextStyle.title(
                        fontSize: 10,
                        color: AppColor.colorGray,
                      ),
                    ),
                    Gap(4),

                    Text("•", style: TextStyle(color: AppColor.colorGray)),
                    Gap(4),

                    Icon(
                      Icons.star_border,
                      size: 13,
                      color: AppColor.colorGray,
                    ),
                    Text(
                      rating,
                      style: AppTextStyle.title(
                        fontSize: 10,
                        color: AppColor.colorGray,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
