import 'package:flutter/material.dart';
import 'package:ticket_app_flutter/core/res/styles/app_styles.dart';

class AppTicketTabs extends StatefulWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs(
      {super.key, required this.firstTab, required this.secondTab});

  @override
  State<AppTicketTabs> createState() => _AppTicketTabsState();
}

class _AppTicketTabsState extends State<AppTicketTabs> {
  late bool selected;

  @override
  void initState() {
    selected = false;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: AppStyles.ticketTabColor),
      child: Row(children: [
        InkWell(
          child: AppTabs(
            tabText: widget.firstTab,
            selected: selected,
            tabBorder: false,
          ),
          onTap: () {
            setState(() {
              selected = false;
            });
          },
        ),
        InkWell(
          child: AppTabs(
            tabText: widget.secondTab,
            selected: !selected,
            tabBorder: true,
          ),
          onTap: () {
            setState(() {
              selected = true;
            });
          },
        )
      ]),
    );
  }
}

class AppTabs extends StatelessWidget {
  AppTabs({
    super.key,
    required this.selected,
    required this.tabBorder,
    this.tabText = "",
  });
  
  bool selected;
  final String tabText;
  final bool tabBorder;
  late bool tabColor;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    if (!selected) {
      tabColor = false;
    } else {
      tabColor = true;
    }
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: size.width * .44,
      decoration: BoxDecoration(
          color: tabColor == false ? Colors.white : Colors.transparent,
          borderRadius: tabBorder == false
              ? const BorderRadius.horizontal(left: Radius.circular(50))
              : const BorderRadius.horizontal(right: Radius.circular(50))),
      child: Center(child: Text(tabText)),
    );
  }
}
