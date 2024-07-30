import 'package:flutter/material.dart';
import 'package:ticket_app_flutter/core/res/utils/all_json.dart';
import 'package:ticket_app_flutter/core/widgets/ticket_view.dart';

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
          children: ticketList.map(
            (e) => Center(
              child: TicketView(ticket: e,largeScreen: true,),
            ),
          ).toList(),
        ),
      ),
    );
  }
}
