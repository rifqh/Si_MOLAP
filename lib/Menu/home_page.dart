import 'package:flutter/material.dart';
import 'package:si_molap/Properti/pop_up.dart';
import 'package:si_molap/Menu/profile_page.dart';
import 'package:si_molap/Properti/element.dart';
import 'package:si_molap/Properti/search_bar.dart';
import 'package:si_molap/Properti/calendar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchController = TextEditingController();
  String buttonStatus = '';
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        titleSpacing: 16,
        leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ProfilePage();
              }));
            },
            icon: const Image(
              image: AssetImage('images/person.png'),
              height: 32,
            )),
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
                  "Hello, Lemon",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: blacky,
                      fontFamily: 'Urbanist',
                      fontSize: 31,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            CustomSearchField(controller: _searchController),
            const SizedBox(
              height: 57,
            ),
            CustomCalendarContainer(
              focusedDay: today,
              firstDay: DateTime.utc(2000, 1, 1),
              lastDay: DateTime.utc(2030, 12, 31),
              onDaySelected: _onDaySelected,
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  "Kelas",
                  style: TextStyle(
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: blacky),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                const HomePagePop();
              },
              child: Row(
                children: [
                  Image(
                    image: AssetImage(
                      "images/addbook.png",
                    ),
                    height: 100,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "No Recent interactions yet",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: blacky,
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      Text(
                        "Your latest interactions will appear here,\nissues, projects, and more",
                        style: TextStyle(
                            color: blacky,
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.normal,
                            fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
