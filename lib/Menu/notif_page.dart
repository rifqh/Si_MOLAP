import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:si_molap/Properti/element.dart';
import 'package:si_molap/Properti/pop_up.dart';

class NotifPage extends StatefulWidget {
  const NotifPage({super.key});

  @override
  State<NotifPage> createState() => _NotifPageState();
}

class _NotifPageState extends State<NotifPage> {
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
                  "Notifications",
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
          ],
        ),
      ),
    );
  }
}
