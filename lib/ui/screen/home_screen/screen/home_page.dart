import 'package:contest_food/config/utils/myColor.dart';
import 'package:contest_food/config/utils/myImage.dart';
import 'package:contest_food/ui/screen/home_screen/widget/banner_widget.dart';
import 'package:contest_food/ui/screen/home_screen/widget/categories.dart';
import 'package:contest_food/ui/screen/home_screen/widget/pizza_widget_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mycolor.spaceColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            expandedHeight: 200,
            backgroundColor: Mycolor.mainTextColor,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image(
                    image: AssetImage(MyImage.banner1),
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            leading: IconButton(
                onPressed: () {
                  //Navigator.pop(context);
                },
                icon: SvgPicture.asset(MyImage.arrowLeftIcon)),
            actions: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        //Navigator.pop(context);
                      },
                      icon: SvgPicture.asset(MyImage.loveIcon)),
                  IconButton(
                      onPressed: () {
                        //Navigator.pop(context);
                      },
                      icon: SvgPicture.asset(MyImage.searchICon)),
                  IconButton(
                      onPressed: () {
                        //Navigator.pop(context);
                      },
                      icon: SvgPicture.asset(MyImage.moreOption)),
                ],
              )
            ],
          ),
          SliverToBoxAdapter(
              child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Mycolor.whiteColor,
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(30)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    color: Mycolor.whiteColor,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Text(
                                    "Off-beat Restaurant",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Mycolor.mainTextColor,
                                        fontFamily: "UrbanistBold"),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  SvgPicture.asset(MyImage.info)
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      MyImage.starIcon,
                                      height: 15,
                                      width: 15,
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      "4.8",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Mycolor.mainTextColor,
                                          fontWeight: FontWeight.w700),
                                    )
                                  ],
                                ),
                                Text(
                                  "2k+ ratings",
                                  style: TextStyle(
                                      fontSize: 9,
                                      color: Mycolor.seconsdTextColor),
                                )
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(MyImage.clockIcon),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              "Delivery",
                              style: TextStyle(
                                  fontSize: 12,
                                  color:
                                      Mycolor.seconsdTextColor.withAlpha(150),
                                  fontFamily: "UrbanistNormal"),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "15-25 mins",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Mycolor.seconsdTextColor,
                                  fontFamily: "UrbanistNormal"),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            SvgPicture.asset(MyImage.directionIcon),
                            Text(
                              "2 km ",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Mycolor.seconsdTextColor,
                                  fontFamily: "UrbanistNormal"),
                            ),
                            Text(
                              "away",
                              style: TextStyle(
                                  fontSize: 12,
                                  color:
                                      Mycolor.seconsdTextColor.withAlpha(150),
                                  fontFamily: "UrbanistNormal"),
                            ),
                            const Spacer(),
                            Text(
                              "Review",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Mycolor.selectButtonColor,
                                  fontFamily: "Urbanist",
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(MyImage.deliveryRider),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              "Free delivery",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Mycolor.selectButtonColor,
                                  fontFamily: "Urbanist",
                                  fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Min orde",
                              style: TextStyle(
                                  fontSize: 12,
                                  color:
                                      Mycolor.seconsdTextColor.withAlpha(150),
                                  fontFamily: "UrbanistNormal"),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              "30 AED",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Mycolor.seconsdTextColor,
                                  fontFamily: "Urbanist"),
                            ),
                            const Spacer(),
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border:
                                    Border.all(color: Mycolor.seconsdTextColor),
                                //shape: BoxShape.circle,
                              ),
                              child: Row(
                                children: [
                                  SvgPicture.asset(MyImage.info),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    "More Info",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Mycolor.seconsdTextColor
                                            .withAlpha(150),
                                        fontFamily: "Urbanist"),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        const SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(children: [
                            BannerWidget(),
                            SizedBox(
                              width: 15,
                            ),
                            BannerWidget(),
                          ]),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        SizedBox(
                          height: 70,
                          width: double.infinity,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: const [
                              Categories(label: "Pizza", isSelect: true),
                              Categories(label: "Chicken", isSelect: false),
                              Categories(label: "Burger", isSelect: false),
                              Categories(label: "Platter", isSelect: false),
                              Categories(label: "Chienese", isSelect: false),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(color: Mycolor.whiteColor),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Pizza",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Mycolor.mainTextColor,
                              fontFamily: "UrbanistBold"),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        SvgPicture.asset(MyImage.pizzaSmall),
                        const SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, "/DetailsPage");
                      },
                      child: PizzaWidgetCard(
                          image: MyImage.pizz,
                          title1: "Pizza margherita",
                          title2: "250 gm - Tangy & spicy, a smash of\n chicken and cheese with mustard oil",
                          title3: "AED 120",
                          title4: "AED 150",
                          title5: "4.8"),
                    ),
                    PizzaWidgetCard(
                        image: MyImage.pizz,
                        title1: "Pizza margherita",
                        title2: "250 gm - Tangy & spicy, a smash of\n chicken and cheese with mustard oil",
                        title3: "AED 120",
                        title4: "AED 150",
                        title5: "4.8"),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(color: Mycolor.whiteColor),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Rice",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Mycolor.mainTextColor,
                              fontFamily: "UrbanistBold"),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        SvgPicture.asset(MyImage.ricePicture),
                        const SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    PizzaWidgetCard(
                        image: MyImage.pizz,
                        title1: "Pizza margherita",
                        title2: "250 gm - Tangy & spicy, a smash of\n chicken and cheese with mustard oil",
                        title3: "AED 120",
                        title4: "AED 150",
                        title5: "4.8"),
                    PizzaWidgetCard(
                        image: MyImage.pizz,
                        title1: "Pizza margherita",
                        title2: "250 gm - Tangy & spicy, a smash of\n chicken and cheese with mustard oil",
                        title3: "AED 120",
                        title4: "AED 150",
                        title5: "4.8"),
                  ],
                ),
              ),
            ],
          ),
          )
        ],
      ),
    );
  }
}
