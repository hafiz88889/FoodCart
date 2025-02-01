import 'package:contest_food/config/utils/myColor.dart';
import 'package:contest_food/config/utils/myImage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PizzaWidgetCard extends StatelessWidget {
  final String image;
  final String title1;
  final String title2;
  final String title3;
  final String title4;
  final String title5;
  const PizzaWidgetCard({super.key,
  required this.image,
  required this.title1,
  required this.title2,
  required this.title3,
  required this.title4,
  required this.title5,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Mycolor.seconsdTextColor.withAlpha(152))
      ),
      child:Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(image: AssetImage(image)),
          const SizedBox(width: 16,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title1,
                    style: TextStyle(
                        fontSize: 14,
                        color: Mycolor.mainTextColor,
                        fontFamily: "UrbanistBold"),
                  ),
                const SizedBox(width: 50,),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Mycolor.deepOrangeColor.withAlpha(20)
                  ),
                  child:   Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Mycolor.deepOrangeColor,
                        size: 25,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                          title5
                      ),
                    ],
                  ),
                )
                ],
              ),
              Text(
                title2,
                style: TextStyle(
                    fontSize: 12,
                    color: Mycolor.seconsdTextColor,
                    fontFamily: "UrbanistNormal"),
              ),
              Row(
                children: [
                  SvgPicture.asset(MyImage.fireIcon),
                  Text(
                    "Popular",
                    style: TextStyle(
                        fontSize: 9,
                        color: Mycolor.mainTextColor,
                        fontWeight: FontWeight.w600,
                        fontFamily: "UrbanistBold"),
                  ),
                ],
              ),
              const SizedBox(height: 5,),
              Row(

                children: [
                  Text(
                    title3,
                    style: TextStyle(
                        fontSize: 14,
                        color: Mycolor.selectButtonColor,
                        fontWeight: FontWeight.w600,
                        fontFamily: "UrbanistBold"),
                  ),
                  const SizedBox(width: 5,),
                  Text(
                    title4,
                    style: TextStyle(
                        fontSize: 14,
                        color: Mycolor.seconsdTextColor,
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.lineThrough,
                        fontFamily: "UrbanistBold"),
                  ),
                  const SizedBox(width: 80,),
                  SvgPicture.asset(MyImage.addSignIcon)
                ],
              ),
            ],
          )
        ],
      ) ,
    );
  }
}
