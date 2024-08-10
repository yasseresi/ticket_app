import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app_flutter/core/res/media.dart';
import 'package:ticket_app_flutter/core/res/styles/app_styles.dart';
import 'package:ticket_app_flutter/screens/Home/widgets/heading_text.dart';
import 'package:ticket_app_flutter/screens/Home/widgets/text_style_third.dart';

import '../Home/widgets/app_column_text_layout.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const SizedBox(
            height: 40,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // show the logo
              Container(
                height: 86,
                width: 86,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: AssetImage(AppMedia.logo))),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HeadingText(text: "Book Tickets"),
                  Text(
                    "New_York",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: AppStyles.profileLocationColor,
                    ),
                    child: Row(children: [
                      Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppStyles.profileTextColor,
                        ),
                        child: const Icon(
                          FluentSystemIcons.ic_fluent_shield_filled,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Premium Status",
                        style: TextStyle(
                          color: AppStyles.profileTextColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ]),
                  )
                ],
              ),
              Expanded(child: Container()),
              Text(
                "Edit",
                style: TextStyle(
                    color: AppStyles.planeSecondColor,
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Divider(
            color: Colors.grey.shade300,
          ),
          Stack(
            children: [
              Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppStyles.primaryColor,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  child: Row(
                    children: [
                      CircleAvatar(
                        maxRadius: 25,
                        backgroundColor: Colors.white,
                        child: Icon(
                          FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                          color: AppStyles.primaryColor,
                          size: 27,
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TextStyleThird(
                            text: "You\'v got a new award",
                          ),
                          Text(
                            " You have 95 flight in a year",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white.withOpacity(0.8),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: -45,
                right: -45,
                child: Container(
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 18),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 25,),
          Text("Accumulated miles", style: AppStyles.headLineStyle2,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: AppStyles.bgColor
            ),
            child: Column(
              children: [
                const SizedBox(height: 15,),
                Text("192802", style: TextStyle(
                  fontSize: 45, color: AppStyles.textColor, fontWeight: FontWeight.w600
                ),),
                const SizedBox(height: 15,),
                //row -> text,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Miles accured",
                      style: AppStyles.headLineStyle4.copyWith(fontSize: 16),
                    ),
                    Text(
                      "16th July",
                      style: AppStyles.headLineStyle4.copyWith(fontSize: 16),
                    )
                  ],
                ),
                const SizedBox(height: 4,),
                //divider
                Divider(color: Colors.grey.shade300),
                const SizedBox(height: 4,),

                //row->column
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                      topText: "23 402",
                      bottomText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),

                    AppColumnTextLayout(
                      topText: "McDonald\'s",
                      bottomText: "Received from",
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),


                  ],
                ),
                const SizedBox(height: 4,),
                //divider
                Divider(color: Colors.grey.shade300),
                const SizedBox(height: 4,),
                //row->column
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    AppColumnTextLayout(
                      topText: "Airline CO",
                      bottomText: "Received from",
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnTextLayout(
                      topText: "24",
                      bottomText: "Miles",
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                const SizedBox(height: 4,),
                //divider
                Divider(color: Colors.grey.shade300),
                const SizedBox(height: 4,),
                //row->column
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    AppColumnTextLayout(
                      topText: "52 240",
                      bottomText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnTextLayout(
                      topText: "Dbestech",
                      bottomText: "Received from",
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                const SizedBox(height: 25,),
                //text
                InkWell(
                  onTap: (){
                    // if (kDebugMode) {
                    //   print("tapped");
                    // }
                  },
                  child: Text(
                    "How to get more miles",
                    style: AppStyles.textStyle.copyWith(
                      color: AppStyles.primaryColor,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
