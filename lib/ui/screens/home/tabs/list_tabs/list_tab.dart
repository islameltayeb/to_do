import 'package:flutter/material.dart';
import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:provider/provider.dart';
import 'package:to_do/data_models/to_do_dm.dart';
import 'package:to_do/provider/setting_provider.dart';
import 'package:to_do/ui/screens/home/tabs/list_tabs/to_do_item.dart';
import 'package:to_do/utility/mythemedata.dart';

class ListTab extends StatelessWidget {
  DateTime selectedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    SettingProvider provider = Provider.of(context);
    return Container(
        color: provider.currentMode == ThemeMode.light
            ? MythemeData.accentColor
            : MythemeData.accentColorDark,
        child: Column(
          children: [
            CalendarTimeline(
              initialDate: selectedDay,
              firstDate: selectedDay.subtract(Duration(days: 365)),
              lastDate: selectedDay.add(Duration(days: 365)),
              onDateSelected: (date) => {selectedDay = date!},
              leftMargin: 20,
              monthColor: provider.currentMode == ThemeMode.light
                  ? Color(0xff363636)
                  : Colors.white,
              dayColor: provider.currentMode == ThemeMode.light
                  ? MythemeData.titleTaskColor
                  : Colors.white,
              activeDayColor: Colors.white,
              activeBackgroundDayColor: MythemeData.itemColor,
              dotsColor: Colors.transparent,
              //selectableDayPredicate: (date) => date.day != 23,
              locale: provider.currantLanguage,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (_, index) {
                      return ToDoItem(ToDoDM(
                        title: "Play BasketBall",
                        description: "My description",
                        time: DateTime.now(),
                        isDone: false,
                      ));
                    }))
          ],
        ));
  }
}
