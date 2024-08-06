import 'package:flutter/material.dart';
import 'package:ticket_app_flutter/core/res/utils/all_json.dart';
import 'package:ticket_app_flutter/screens/Home/widgets/ticket_view.dart';
import 'package:ticket_app_flutter/screens/search/search_screen.dart';
import 'package:ticket_app_flutter/screens/ticket/ticket_screen.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All tickets"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: ticketList
              .map(
                (e) => GestureDetector(
                  onTap: () {
                    int index = ticketList.indexOf(e);
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => TicketScreen(
                          element: e,
                        ),
                      ),
                    );
                  },
                  child: Center(
                    child: TicketView(
                      ticket: e,
                      largeScreen: true,
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
