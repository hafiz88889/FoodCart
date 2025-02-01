import 'package:contest_food/config/utils/myColor.dart';
import 'package:contest_food/config/utils/myImage.dart';
import 'package:contest_food/ui/screen/description_screen/widget/add_variation_widget.dart';
import 'package:contest_food/ui/screen/home_screen/widget/banner_widget.dart';
import 'package:contest_food/ui/screen/home_screen/widget/categories.dart';
import 'package:contest_food/ui/screen/home_screen/widget/pizza_widget_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 130,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          decoration: BoxDecoration(
            color: Mycolor.whiteColor
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Price Display
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'AED 120',
                    style: TextStyle(
                      color: Mycolor.selectButtonColor,
                      fontWeight: FontWeight.w700,
                      fontFamily: "UrbanistBold",
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(width: 5,),
                  Text(
                    '(1 item)',
                    style: TextStyle(
                      color: Mycolor.seconsdTextColor.withAlpha(150),
                      fontSize: 14,
                      fontFamily: "UrbanistBold"
                    ),
                  ),
                  const Spacer(),

                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.delete, color: Colors.grey),
                        onPressed: () {
                          // Handle delete action
                        },
                      ),
                      Text(
                        '1',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          fontFamily: "UrbanistBold"
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.add, color: Colors.grey),
                        onPressed: () {
                          // Increase item count
                        },
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {
                    // Add to cart action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Mycolor.selectButtonColor,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24.0,
                      vertical: 12.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  label:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Spacer(),
                      Text(
                        'Add to cart',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontFamily: "UrbanistBold",
                          color: Colors.white,
                        ),
                      ),
                      const Spacer(),
                     SvgPicture.asset(MyImage.messageIcon)
                    ],
                  )
                  
                ),
              ),
            ],
          ),
        ),
      ),
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
                  Navigator.pop(context);
                },
                icon: SvgPicture.asset(MyImage.arrowLeftIcon)),
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
                          Text(
                            "Rice with chicken",
                            style: TextStyle(
                                fontSize: 20,
                                color: Mycolor.mainTextColor,
                                fontFamily: "UrbanistBold"),
                          ),

                          const SizedBox(
                            height: 14,
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet consectetur. Dignissim pulvinar non viverra pellentesque sollicitudin non risus. Proin a placerat nullam scelerisque tortor sit et sed semper.",
                            style: TextStyle(
                                fontSize: 12,
                                color: Mycolor.seconsdTextColor,
                                fontWeight: FontWeight.w500,
                                fontFamily: "UrbanistNormal"),
                          ),
                          const SizedBox(height: 16,),
                          Container(
                            padding: EdgeInsets.only(left: 15,right: 15,top: 15,bottom: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Mycolor.contentColor,
                              border: Border.all(color: Mycolor.selectButtonColor.withAlpha(100))
                            ),
                            child:Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Add variation",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Mycolor.mainTextColor,
                                          fontWeight: FontWeight.w800,
                                          fontFamily: "UrbanistNormal"),
                                    ),
                            Text(
                              "*Required",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Mycolor.selectButtonColor,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "UrbanistNormal"),
                            ),

                                  ],
                                ),
                                const SizedBox(height: 14,),
                                const Row(
                                  children: [
                                    AddVariationWidget(title1: "1:1", title2: "1:2", title3: "1:4", title4: "1:4",title5: "AED 120",title6: "AED 240",title7: "AED 320",),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.all(15),
                  color: Mycolor.whiteColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Special requests",
                            style: TextStyle(
                                fontSize: 16,
                                color: Mycolor.mainTextColor,
                                fontFamily: "UrbanistBold"),
                          ),
                          Text(
                            "(Optional)",
                            style: TextStyle(
                                fontSize: 16,
                                color: Mycolor.seconsdTextColor,
                                fontFamily: "UrbanistBold"),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8,),
                      Text(
                        "Special requests are subject to the restaurant's approval. Tell us here what you want to share!",
                        style: TextStyle(
                            fontSize: 12,
                            color: Mycolor.seconsdTextColor,
                            fontWeight: FontWeight.w500,
                            fontFamily: "UrbanistNormal"),
                      ),
                      const SizedBox(height: 16,),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Mycolor.seconsdTextColor.withAlpha(100)),
                        ),
                        child: TextField(
                          maxLines: 3,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Mycolor.seconsdTextColor.withAlpha(100))),
                            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Mycolor.seconsdTextColor.withAlpha(100))),
                            border: const OutlineInputBorder(
                            ),
                            hintText: "e.g Hello",hintStyle: TextStyle(color: Mycolor.seconsdTextColor.withAlpha(50))
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
