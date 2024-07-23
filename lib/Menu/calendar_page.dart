import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:si_molap/Properti/element.dart';
import 'package:si_molap/Properti/pop_up.dart';
import 'package:si_molap/Properti/calendar.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  String buttonStatus = '';
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        titleSpacing: 16,
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
        actions: const [
          HomePagePop(),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Calendar",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: blacky,
                      fontFamily: 'Urbanist',
                      fontSize: 31,
                      fontWeight: semi),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            CupertinoSearchTextField(
              borderRadius: BorderRadius.circular(10),
              controller: TextEditingController(),
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              children: [
                CustomCalendar(
                  focusedDay: today,
                  firstDay: DateTime.utc(2000, 1, 1),
                  lastDay: DateTime.utc(2030, 12, 31),
                  onDaySelected: _onDaySelected,
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  color: Colors.black,
                  thickness: 0.6,
                  indent: 16,
                  endIndent: 16,
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image(
                          image: AssetImage("images/dot_m.png"),
                          height: 11,
                        ),
                        Text(
                          " Praktikum Algoritma Pemrograman",
                          style: TextStyle(fontWeight: semi, color: blacky),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Column(
                        children: [
                          Text("Laporan Praktikum 1",
                              style:
                                  TextStyle(fontWeight: semi, color: blacky)),
                          Text(
                              "Judul: Overloading\nHari: Kamis\nWaktu: 14.00 - 17.00\nCatatan: -")
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
