import 'package:contest_food/config/utils/myColor.dart';
import 'package:flutter/material.dart';

class AddVariationWidget extends StatefulWidget {
  final String title1;
  final String title2;
  final String title3;
  final String title4;
  final String title5;
  final String title6;
  final String title7;

  const AddVariationWidget({
    super.key,
    required this.title1,
    required this.title2,
    required this.title3,
    required this.title4,
    required this.title5,
    required this.title6,
    required this.title7,
  });

  @override
  State<AddVariationWidget> createState() => _AddVariationWidgetState();
}

class _AddVariationWidgetState extends State<AddVariationWidget> {
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Radio(
                      activeColor: Mycolor.selectButtonColor,
                      value: 1,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value!;
                        });
                      }),
                  Text(
                    widget.title2,
                    style: TextStyle(
                        fontFamily: "UrbanistBold",
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: Mycolor.seconsdTextColor),
                  ),
                  const SizedBox(
                    width: 180,
                  ),
                  Text(
                    widget.title5,
                    style: TextStyle(
                        fontFamily: "UrbanistBold",
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: Mycolor.mainTextColor),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Radio(
                      activeColor: Mycolor.selectButtonColor,
                      value: 2,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value!;
                        });
                      }),
                  Text(
                    widget.title3,
                    style: TextStyle(
                        fontFamily: "UrbanistBold",
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: Mycolor.seconsdTextColor),
                  ),
                  const SizedBox(
                    width: 180,
                  ),
                  Text(
                    widget.title6,
                    style: TextStyle(
                        fontFamily: "UrbanistBold",
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: Mycolor.mainTextColor),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Radio(
                      activeColor: Mycolor.selectButtonColor,
                      value: 3,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value!;
                        });
                      }),
                  Text(
                    widget.title4,
                    style: TextStyle(
                        fontFamily: "UrbanistBold",
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: Mycolor.seconsdTextColor),
                  ),
                  const SizedBox(
                    width: 180,
                  ),
                  Text(
                    widget.title7,
                    style: TextStyle(
                        fontFamily: "UrbanistBold",
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: Mycolor.mainTextColor),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
