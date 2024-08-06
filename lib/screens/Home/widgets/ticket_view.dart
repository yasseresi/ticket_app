import 'package:flutter/material.dart';
import 'package:ticket_app_flutter/core/res/styles/app_styles.dart';
import 'package:ticket_app_flutter/screens/Home/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app_flutter/screens/Home/widgets/app_text-column.dart';
import 'package:ticket_app_flutter/screens/Home/widgets/big.dot.dart';
import 'package:ticket_app_flutter/screens/Home/widgets/big_circle.dart';
import 'package:ticket_app_flutter/screens/Home/widgets/text-style_fourth.dart';
import 'package:ticket_app_flutter/screens/Home/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool largeScreen;
  final bool? isColor;
  const TicketView(
      {super.key,
      required this.ticket,
      this.largeScreen = false,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(right: largeScreen ? 0 : 16,top: 10),

      width: size.width * 0.85,
      height: 180,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: isColor == null ? AppStyles.ticketBlue: Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(21),
                topRight: Radius.circular(21),
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    TextStyleThird(
                      text: ticket["from"]['code'],
                      isColor: isColor,
                    ),
                    const Expanded(child: SizedBox()),
                    BigDot(isColor: isColor),
                    Expanded(
                      child: Stack(
                        children: [
                          const SizedBox(
                              height: 24,
                              child: AppLayoutBuilder(
                                random: 6,
                                isColor: true,
                              )),
                          Transform.rotate(
                            angle: 1.57,
                            child: Center(
                                child: Icon(
                              Icons.local_airport_rounded,
                              color: isColor == null ? Colors.white : AppStyles.planeSecondColor,
                            )),
                          )
                        ],
                      ),
                    ),
                    BigDot(
                      isColor: isColor,
                    ),
                    const Expanded(child: SizedBox()),
                    TextStyleThird(
                      text: ticket['to']['code'],
                      isColor: isColor,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    TextStyleForth(
                      text: ticket["from"]["name"],
                      isColor: true,
                    ),
                    const Expanded(child: SizedBox()),
                    Expanded(
                        child: TextStyleForth(
                      text: ticket['flying_time'],
                      isColor: isColor,
                    )),
                    const Expanded(child: SizedBox()),
                    TextStyleForth(
                      text: ticket['to']['name'],
                      isColor: isColor,
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            color: isColor == null ? AppStyles.ticketOrange : Colors.white,
            child: Row(
              children: [
                BigCircle(
                  isTrue: true,
                  isColor: isColor,
                  
                ),
                Expanded(
                  child: AppLayoutBuilder(random: 10,isColor: isColor,),
                ),
                BigCircle(isTrue: false,isColor: isColor,),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color:isColor == null ? AppStyles.ticketOrange : Colors.white,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(21),
                bottomRight: Radius.circular(21),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppTextColumn(
                    topText: ticket['date'],
                    bottomText: "Date",
                    alignment: CrossAxisAlignment.start,
                    isColor: isColor,
            ),
                AppTextColumn(
                    topText: ticket['departure_time'],
                    bottomText: "Departure time",
                    alignment: CrossAxisAlignment.center,
                    isColor: isColor,
          
                    ),
                AppTextColumn(
                    topText: ticket['number'].toString(),
                    bottomText: 'Number',
                    isColor: isColor,
                    alignment: CrossAxisAlignment.end),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
