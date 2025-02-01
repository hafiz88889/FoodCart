import 'package:contest_food/config/utils/myColor.dart';
import 'package:contest_food/config/utils/myImage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          width: 330,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15)),
              image: DecorationImage(image: AssetImage(MyImage.disbanner),fit: BoxFit.cover)
          ),
          child: Column(
            children: [
              Row(
                children: [
                  SvgPicture.asset(MyImage.discountIcon),
                  const SizedBox(width: 8,),
                  Text(
                    "20% off",
                    style: TextStyle(
                        fontSize: 20,
                        color: Mycolor.whiteColor,
                        fontFamily: "UrbanistBold"),
                  ),
                  const SizedBox(width: 15,),
                  Text(
                    "upto 300 AED",
                    style: TextStyle(
                        fontSize: 12,
                        color: Mycolor.whiteColor,
                        fontFamily: "UrbanistNormal"),
                  ),
                ],
              ),
              const SizedBox(height: 15,),
            ],
          ),
        ),
        Container(
          width: 330,
            padding: EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(15),bottomLeft: Radius.circular(15)),
                color: Mycolor.boldColor
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(MyImage.deliveryRider,colorFilter: ColorFilter.mode(Mycolor.whiteColor, BlendMode.srcIn),),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  "Free delivery",
                  style: TextStyle(
                      fontSize: 12,
                      color: Mycolor.whiteColor,
                      fontFamily: "Urbanist",
                      fontWeight: FontWeight.w700),
                ),
              ],
            )
        ),

      ],
    );
  }
}
