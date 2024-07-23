import 'package:flutter/material.dart';
import 'package:si_molap/Dosen/check_laporan.dart';
import 'package:si_molap/Properti/element.dart';
import 'package:intl/intl.dart';

class CompleteTask extends StatefulWidget {
  const CompleteTask({super.key});

  @override
  State<CompleteTask> createState() => _CompleteTaskState();
}

class _CompleteTaskState extends State<CompleteTask> {
  bool firstValue = false;

  @override
  Widget build(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffffffff),
        title: Text(
          "Laporan Mahasiswa",
          style: TextStyle(
              fontSize: 16,
              fontFamily: 'Urbanist',
              color: blacky,
              fontWeight: FontWeight.w500),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: mainColor,
            )),
        actions: [
          Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 16, 0),
              child: IconButton(
                  onPressed: () {}, icon: Icon(Icons.more_horiz_rounded)))
        ],
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(5.0),
            child: Container(
              height: 1.5,
              color: Colors.grey.withOpacity(0.5),
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 24, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 23),
            Text(
              "Laporan Selesai",
              style: TextStyle(
                  fontFamily: 'Urbanist', fontSize: 16, fontWeight: semi),
            ),
            SizedBox(height: 23),
            Row(
              children: [
                Checkbox(
                  value: firstValue,
                  onChanged: (value) {
                    setState(() {
                      firstValue = value!;
                    });
                  },
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Pilih Semua",
                  style: TextStyle(
                      fontSize: 14, fontWeight: biasa, fontFamily: 'Urbanist'),
                ),
              ],
            ),
            Divider(
              thickness: 1,
              color: Color(0xffADADAD),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                SizedBox(
                  width: 65,
                ),
                Text(
                  "Mahasiswa",
                  style: TextStyle(fontSize: 12, fontWeight: biasa),
                ),
                SizedBox(
                  width: 138,
                ),
                Text(
                  "Diselesaikan pada",
                  style: TextStyle(fontSize: 12, fontWeight: biasa),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            CheckboxList(),
          ],
        ),
      ),
    );
  }
}

class CheckboxList extends StatefulWidget {
  @override
  _CheckboxListState createState() => _CheckboxListState();
}

class _CheckboxListState extends State<CheckboxList> {
  // List of items with boolean to track checked state and time
  List<Map<String, dynamic>> items = [
    {'name': 'Item 1', 'isChecked': false, 'time': DateTime.now()},
    {'name': 'Item 2', 'isChecked': false, 'time': DateTime.now()},
    {'name': 'Item 3', 'isChecked': false, 'time': DateTime.now()},
    {'name': 'Item 4', 'isChecked': false, 'time': DateTime.now()},
  ];

  void _onButtonPressed(int index) {
    setState(() {
      items[index]['isChecked'] = !items[index]['isChecked'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: items.asMap().entries.map((entry) {
          Map<String, dynamic> item = entry.value;
          String formattedTime =
              DateFormat('dd MMMM yyyy HH:mm').format(item['time']);
          return ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(0.0),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const CheckPage();
              }));
            },
            child: Row(
              children: [
                Checkbox(
                  value: item['isChecked'],
                  onChanged: (bool? value) {
                    setState(() {
                      item['isChecked'] = value!;
                    });
                  },
                ),
                Image(
                  image: AssetImage('images/person.png'),
                  height: 31,
                ),
                SizedBox(width: 8.0),
                Expanded(
                  child: Text(
                    item['name'],
                    style: TextStyle(
                        color: blacky, fontSize: 14, fontFamily: 'Urbanist'),
                  ),
                ),
                const Spacer(),
                Text(
                  formattedTime,
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
