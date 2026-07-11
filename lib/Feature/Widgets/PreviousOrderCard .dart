import 'package:flutter/material.dart';
import 'package:flutter_task2/Core/App_Color.dart';
import 'package:flutter_task2/Core/App_Text_Style.dart';
import 'package:gap/gap.dart';

class PreviousOrderCard extends StatelessWidget {
  const PreviousOrderCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
  });
  final String title;
  final String subtitle;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(.05), blurRadius: 8),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 42,
                height: 42,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Gap(12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      title,
                      textAlign: TextAlign.right,
                      style: AppTextStyle.title(),
                    ),
                    Gap(3),
                    Text(
                      subtitle,
                      textAlign: TextAlign.right,
                      style: AppTextStyle.title(),
                    ),
                  ],
                ),
              ),
            ],
          ),

          Gap(12),
          InkWell(
            onTap: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.refresh, color: AppColor.primaryGR, size: 18),
                Gap(5),
                Text(
                  "إعادة الطلب",
                  style: AppTextStyle.title(color: AppColor.primaryGR),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
