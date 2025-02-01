import 'package:contest_food/config/utils/myColor.dart';
import 'package:contest_food/config/utils/myImage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Categories extends StatelessWidget {
  final String label;
  final bool isSelect;
  const Categories({super.key,
    required this.label,
    required this.isSelect
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7,vertical: 14),
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Mycolor.seconsdTextColor.withAlpha(100)),
          color: isSelect ? Mycolor.selectButtonColor : Mycolor.whiteColor,
        ),
        child: Row(
          children: [
            Text(label,
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: isSelect ? "UrbanistBold":"UrbanistNormal",
                  color: isSelect ? Mycolor.whiteColor : Mycolor.seconsdTextColor,
                )),
            const SizedBox(width: 5,),
          ],
        ),
      ),
    );
  }
}
