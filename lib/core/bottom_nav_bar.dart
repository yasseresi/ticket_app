import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:ticket_app_flutter/controllers/bottom_nav_controller.dart';
import 'package:ticket_app_flutter/core/res/media.dart';
import 'package:ticket_app_flutter/core/res/styles/app_styles.dart';
import 'package:ticket_app_flutter/core/res/utils/all_json.dart';
import 'package:ticket_app_flutter/screens/Home/home_screen.dart';
import 'package:ticket_app_flutter/screens/profile/profile_page.dart';
import 'package:ticket_app_flutter/screens/ticket/ticket_screen.dart';

import '../screens/search/search_screen.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key});
  final BottomNavController controller = Get.put(BottomNavController());
  var page = [
    const HomePage(),
    const SearchScreen(),
    TicketScreen(
      element: ticketList[0],
    ),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
     return Obx(() {
       return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: page[controller.index.value],
      bottomNavigationBar: NavigationBar(
          backgroundColor: Colors.white,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          selectedIndex: controller.index.value,
          destinations: const [
            NavigationDestination(
              icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              label: "home",
              selectedIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
            ),
            NavigationDestination(
              icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              label: "search",
              selectedIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
            ),
            NavigationDestination(
              icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
              label: "ticket",
              selectedIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
            ),
            NavigationDestination(
              icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
              label: "profile",
              selectedIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
            ),
          ],
          onDestinationSelected: controller.changeScreen),
    );
  
     },);
    }
}
