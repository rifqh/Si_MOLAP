import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CustomCalendarContainer extends StatefulWidget {
  final DateTime focusedDay;
  final DateTime firstDay;
  final DateTime lastDay;
  final Function(DateTime, DateTime) onDaySelected;

  const CustomCalendarContainer({
    Key? key,
    required this.focusedDay,
    required this.firstDay,
    required this.lastDay,
    required this.onDaySelected,
  }) : super(key: key);

  @override
  State<CustomCalendarContainer> createState() =>
      _CustomCalendarContainerState();
}

class _CustomCalendarContainerState extends State<CustomCalendarContainer> {
  
  String buttonStatus = '';
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      width: 330,
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade500,
            offset: const Offset(0, 5),
            blurRadius: 10,
            spreadRadius: 1.0,
          ),
          const BoxShadow(
            color: Colors.white,
            offset: Offset(0, -5),
            blurRadius: 10,
            spreadRadius: 1.0,
          ),
        ],
      ),
      child: TableCalendar(
        calendarStyle: CalendarStyle(
          markersOffset: PositionedOffset(top: 5, bottom: 5, start: 5, end: 5),
          cellPadding: EdgeInsets.all(0),
          cellMargin: EdgeInsets.all(5),
          selectedTextStyle: TextStyle(color: Colors.black),
          selectedDecoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.transparent,
              border: Border.all(
                color: Color(0xffADADAD),
                width: 2,
              )),
          todayDecoration:
              BoxDecoration(color: Colors.transparent, shape: BoxShape.circle),
          todayTextStyle:
              TextStyle(color: Color(0xffFDA412), fontWeight: FontWeight.bold),
          isTodayHighlighted: true,
        ),
        startingDayOfWeek: StartingDayOfWeek.monday,
        pageJumpingEnabled: true,
        focusedDay: widget.focusedDay,
        firstDay: widget.firstDay,
        lastDay: widget.lastDay,
        locale: "en_US",
        rowHeight: 35,
        availableGestures: AvailableGestures.all,
        onDaySelected: _onDaySelected,
        selectedDayPredicate: (day) => isSameDay(day, today),
        headerStyle: const HeaderStyle(
          titleCentered: true,
          formatButtonVisible: false,
          formatButtonShowsNext: true,
          headerPadding: EdgeInsets.symmetric(vertical: 2.0),
        ),
        // Tambahkan properti lain sesuai kebutuhan
      ),
    );
  }
}

class CustomCalendar extends StatefulWidget {
  final DateTime focusedDay;
  final DateTime firstDay;
  final DateTime lastDay;
  final Function(DateTime, DateTime) onDaySelected;

  const CustomCalendar({
    Key? key,
    required this.focusedDay,
    required this.firstDay,
    required this.lastDay,
    required this.onDaySelected,
  }) : super(key: key);

  @override
  State<CustomCalendar> createState() => _CustomCalendarState();
}

class _CustomCalendarState extends State<CustomCalendar> {
  String buttonStatus = '';
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      calendarStyle: CalendarStyle(
        selectedTextStyle: TextStyle(color: Color(0xff323232)),
        selectedDecoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.transparent,
            border: Border.all(
              color: Color(0xffADADAD),
              width: 2,
            )),
        todayDecoration:
            BoxDecoration(shape: BoxShape.circle, color: Colors.transparent),
        todayTextStyle:
            TextStyle(color: Color(0xffFDA412), fontWeight: FontWeight.bold),
        isTodayHighlighted: true,
      ),
      startingDayOfWeek: StartingDayOfWeek.monday,
      pageJumpingEnabled: true,
      focusedDay: widget.focusedDay,
      firstDay: widget.firstDay,
      lastDay: widget.lastDay,
      locale: "en_US",
      rowHeight: 50,
      availableGestures: AvailableGestures.all,
      onDaySelected: _onDaySelected,
      selectedDayPredicate: (day) => isSameDay(day, today),
      headerStyle: const HeaderStyle(
        titleCentered: true,
        formatButtonVisible: false,
        formatButtonShowsNext: true,
        headerPadding: EdgeInsets.symmetric(vertical: 2.0),
      ),
      // Tambahkan properti lain sesuai kebutuhan
    );
  }
}
