import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class AppTicketTaps extends StatelessWidget {
  const AppTicketTaps({super.key, required this.firstTab, required this.secondTab});
  final String firstTab;
  final String secondTab;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: AppStyles.ticketTabColor
      ),
      child: Row(
        children: [
          AppTaps(
            tabText: firstTab,
          ),
          AppTaps(
            tabText: secondTab,
            tabColor: true,
            tabBorder: true,
          ),
        ],
      ),
    );
  }
}

class AppTaps extends StatelessWidget {
  const AppTaps(
      {super.key,
      this.tabText = "",
      this.tabBorder = false,
      this.tabColor = false});

  final String tabText;
  final bool tabBorder;
  final bool tabColor;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7),
      width: size.width * 0.44,
      decoration: BoxDecoration(
          color: tabColor == false ? Colors.white : Colors.transparent,
          borderRadius: tabBorder == false
              ? const BorderRadius.horizontal(left: Radius.circular(50))
              : const BorderRadius.horizontal(
                  right: Radius.circular(50),
                )),
      child: Center(child: Text(tabText)),
    );
  }
}
