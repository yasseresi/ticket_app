import 'package:flutter/material.dart';
import 'package:ticket_app_flutter/core/res/styles/app_styles.dart';
import 'package:ticket_app_flutter/core/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app_flutter/core/widgets/app_text-column.dart';
import 'package:ticket_app_flutter/core/widgets/big.dot.dart';
import 'package:ticket_app_flutter/core/widgets/big_circle.dart';
import 'package:ticket_app_flutter/core/widgets/text-style_fourth.dart';
import 'package:ticket_app_flutter/core/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool largeScreen;
  const TicketView({super.key, required this.ticket,this.largeScreen = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      margin:  EdgeInsets.only(right: largeScreen ? 0 : 16),
      width: size.width * 0.85,
      height: 197,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppStyles.ticketBlue,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(21),
                topRight: Radius.circular(21),
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    TextStyleThird(text: ticket["from"]['code']),
                    const Expanded(child: SizedBox()),
                    const BigDot(),
                    Expanded(
                      child: Stack(
                        children: [
                          const SizedBox(
                              height: 24, child: AppLayoutBuilder(random: 6)),
                          Transform.rotate(
                            angle: 1.57,
                            child: const Center(
                                child: Icon(
                              Icons.local_airport_rounded,
                              color: Colors.white,
                            )),
                          )
                        ],
                      ),
                    ),
                    const BigDot(),
                    const Expanded(child: SizedBox()),
                    TextStyleThird(text: ticket['to']['code']),
                  ],
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    TextStyleForth(text: ticket["from"]["name"]),
                    const Expanded(child: SizedBox()),
                    Expanded(
                        child: TextStyleForth(
                      text: ticket['flying_time'],
                    )),
                    const Expanded(child: SizedBox()),
                    TextStyleForth(text: ticket['to']['name']),
                  ],
                )
              ],
            ),
          ),
          Container(
            color: AppStyles.ticketOrange,
            child: const Row(
              children: [
                BigCircle(
                  isTrue: true,
                ),
                Expanded(
                  child: AppLayoutBuilder(random: 10),
                ),
                BigCircle(isTrue: false),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppStyles.ticketOrange,
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
                    alignment: CrossAxisAlignment.start),
                AppTextColumn(
                    topText: ticket['departure_time'],
                    bottomText: "Departure time",
                    alignment: CrossAxisAlignment.center),
                AppTextColumn(
                    topText: ticket['number'].toString(),
                    bottomText: 'Number',
                    alignment: CrossAxisAlignment.end),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
