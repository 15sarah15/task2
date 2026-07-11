import 'package:flutter/material.dart';
import 'package:flutter_task2/Core/App_Color.dart';
import 'package:flutter_task2/Core/App_Text_Style.dart';
import 'package:flutter_task2/Feature/Widgets/MostRequested.dart';
import 'package:flutter_task2/Feature/Widgets/PreviousOrderCard%20.dart';
import 'package:flutter_task2/Feature/Widgets/category.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

final categories = [
  {'title': 'الطلب السريع', 'color': Colors.orange[700]},
  {'title': 'المطاعم', 'color': Colors.green[900]},
  {'title': 'بقالة', 'color': Colors.teal[700]},
];
final restaurants = [
  {
    "image": "images/كوك.png",
    "title": "كوك دور",
    "category": "برجر • فرايد تشيكن",
    "time": "45 دقيقة",
    "price": "15 ج",
    "rating": "4.5",
  },
  {
    "image": "images/سكبترا.jpg",
    "title": "بيكانيرفالا",
    "category": "هندي • ساندوتش",
    "time": "45 دقيقة",
    "price": "45 ج",
    "rating": "4.5",
  },
];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: AppColor.colorBlack,
                            ),
                            Gap(4),
                            Text(
                              "طنطا ، منطقة الاستاد",
                              style: AppTextStyle.title(),
                            ),
                          ],
                        ),
                        Text("تغيير", style: AppTextStyle.title()),
                      ],
                    ),
                    Gap(12),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            decoration: BoxDecoration(
                              color: AppColor.colorLightGray,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: TextField(
                              textAlign: TextAlign.right,
                              decoration: InputDecoration(
                                hintText: "ابحث عن وجبة او مطعم",
                                hintStyle: AppTextStyle.title(
                                  color: AppColor.colorGray,
                                ),
                                border: InputBorder.none,
                                icon: Icon(
                                  Icons.search,
                                  color: AppColor.colorGray,
                                ),
                              ),
                            ),
                          ),
                        ),

                        Gap(15),

                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 12,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            children: [
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Icon(
                                    Icons.shopping_cart_outlined,
                                    color: Colors.black87,
                                    size: 20,
                                  ),
                                  Positioned(
                                    top: -5,
                                    right: -5,
                                    child: Container(
                                      padding: const EdgeInsets.all(3),
                                      decoration: BoxDecoration(
                                        color: Colors.orange,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Text(
                                        "50",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 8,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Gap(8),
                              Text(
                                "300 ج",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.orange,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Gap(12),
                    Container(
                      width: double.infinity,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: AssetImage("images/first_image.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Gap(15),
                    Positioned(
                      bottom: 8,
                      child: Row(
                        children: [
                          Container(
                            width: 18,
                            height: 8,
                            decoration: BoxDecoration(
                              color: AppColor.primaryGR,
                              borderRadius: BorderRadius.circular(3),
                            ),
                          ),
                          Gap(4),
                          Container(
                            width: 25,
                            height: 8,
                            decoration: BoxDecoration(
                              color: AppColor.colorLightGray,
                              borderRadius: BorderRadius.circular(3),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Gap(20),
                Text("الاقسام", style: AppTextStyle.body()),
                Gap(12),
                SizedBox(
                  height: 110,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return Category(index: index);
                    },
                  ),
                ),
                Gap(20),
                Text("اعاده الطلب", style: AppTextStyle.body()),
                Gap(12),
                SizedBox(
                  height: 120,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      PreviousOrderCard(
                        title: "مطعم هندي",
                        subtitle: "وجبة العائلة",
                        image: "images/مطعم هندي.png",
                      ),
                      Gap(12),
                      PreviousOrderCard(
                        title: "طلب سريع",
                        subtitle: "متجر السندلم",
                        image: "images/طلب سريع.png",
                      ),
                    ],
                  ),
                ),
                Gap(20),
                Row(
                  children: [
                    Text("الاكثر طلبا", style: AppTextStyle.body()),
                    Spacer(),
                    Text(
                      "الكل",
                      style: AppTextStyle.body(
                        color: AppColor.primaryGR,
                        fontSize: 20,
                      ),
                    ),
                    Gap(6),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                      color: AppColor.primaryGR,
                    ),
                  ],
                ),
                Gap(12),
                SizedBox(
                  height: 185,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    itemCount: restaurants.length,
                    separatorBuilder: (_, __) => const SizedBox(width: 12),
                    itemBuilder: (context, index) {
                      final item = restaurants[index];

                      return MostRequested(
                        image: item["image"]!,
                        title: item["title"]!,
                        category: item["category"]!,
                        time: item["time"]!,
                        price: item["price"]!,
                        rating: item["rating"]!,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
