import 'package:baap_people_mgnt/consts/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../consts/app_sizes.dart';

class CalanderWidget extends StatefulWidget {
  const CalanderWidget({
    required this.context,
    super.key});
  final BuildContext context;

  @override
  State<CalanderWidget> createState() => _CalanderWidgetState();
}

class _CalanderWidgetState extends State<CalanderWidget> {
  DateTime today = DateTime.now();
  void _onDateselected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: AppSizes.getPhoneSize(19),
              right: AppSizes.getPhoneSize(19)
              ),
          child: Container(
            color: AppColors.containerColor,
            child: TableCalendar(
              locale: "en_US",
              rowHeight: 40,
              headerStyle: HeaderStyle(formatButtonVisible: false),
              focusedDay: today,
              selectedDayPredicate: (day) => isSameDay(day, today),
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 10, 16),
              onDaySelected: _onDateselected,
            ),
          ),
        )
      ],
    );
  }
}
