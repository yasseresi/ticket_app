import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ticket_app_flutter/core/res/media.dart';
import 'package:ticket_app_flutter/core/res/styles/app_styles.dart';
import 'package:ticket_app_flutter/core/res/utils/all_json.dart';
import 'package:ticket_app_flutter/screens/Home/all_hotels.dart';
import 'package:ticket_app_flutter/screens/Home/widgets/app_double_text.dart';
import 'package:ticket_app_flutter/screens/Home/widgets/heading_text.dart';
import 'package:ticket_app_flutter/screens/Home/widgets/hotel.dart';
import 'package:ticket_app_flutter/screens/Home/widgets/ticket_view.dart';
import 'package:ticket_app_flutter/screens/Home/all_tickets.dart';

import '../hotel_details.dart';
import '../ticket/ticket_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        children: [
          const SizedBox(
            height: 40,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Good morning",
                              style: AppStyles.headLineStyle2,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const HeadingText(text: "Book Tickets"),
                          ],
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: AssetImage(AppMedia.logo),
                            ),
                          ),
                        ),
                        
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: const Row(
                        children: [
                          Icon(
                            FluentSystemIcons.ic_fluent_search_regular,
                            color: Color.fromARGB(15, 240, 240, 5),
                          ),
                          Text("Search"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              AppDboubleText(
                bigText: "Upcaming flight",
                smallText: "view all",
                func: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const AllTickets(),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                padding: const EdgeInsets.only(left: 20),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: ticketList
                      .map(
                        (e) => GestureDetector(
                          child: TicketView(ticket: e),
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => TicketScreen(
                                  element: e,
                                ),
                              ),
                            );
                          },
                        ),
                      )
                      .toList(),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              AppDboubleText(
                bigText: "Hotels",
                smallText: "view all",
                func: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const AllHotels(),
                    ),
                  );
                },
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: hotelList
                        .map(
                          (e) => GestureDetector(
                            child: Hotel(hotel: e),
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => HotelDetails(hotel: e),
                                ),
                              );
                              //TODO: FIX THE ROUTE LATER
                            },
                          ),
                        )
                        .toList(),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
