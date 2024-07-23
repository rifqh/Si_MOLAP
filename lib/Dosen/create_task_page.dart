import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:si_molap/Dosen/see_task.dart';
import '../Properti/element.dart';

class CreateTaskPage extends StatefulWidget {
  const CreateTaskPage({super.key});

  @override
  State<CreateTaskPage> createState() => _CreateTaskPageState();
}

class _CreateTaskPageState extends State<CreateTaskPage> {
  TextEditingController _dateController = TextEditingController();
  DateTime dateTime = DateTime(2024, 2, 1, 10, 20);
  void initState() {
    dateTime = DateTime.now();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        backgroundColor: Color(0xffffffff),
        title: Text(
          "Buat Laporan",
          style: TextStyle(
            color: blacky,
          ),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.close_outlined,
              color: mainColor,
            )),
        actions: [
          Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 16, 0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const SeeTask();
                  }));
                },
                child: Text(
                  "Unggah",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'Urbanist'),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: mainColor,
                    minimumSize: const Size(81, 28),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
              )),
        ],
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(5.0),
            child: Container(
              height: 1.5,
              color: Colors.grey.withOpacity(0.5),
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 35,
            ),
            GestureDetector(
                onTap: () {},
                child: Row(children: [
                  Icon(Icons.book_outlined),
                  Text(
                    "SOK - Kelas A",
                    style: TextStyle(fontWeight: semi, color: blacky),
                  ),
                  Icon(Icons.expand_more_rounded)
                ])),
            SizedBox(height: 17),
            Row(
              children: [
                Text(
                  "Laporan Praktikum ke",
                  style: TextStyle(fontWeight: semi, color: blacky),
                ),
              ],
            ),
            SizedBox(
              height: 17,
            ),
            Text(
              "Judul Materi",
              style: TextStyle(
                  fontWeight: semi, color: blacky, fontFamily: 'Urbanist'),
            ),
            SizedBox(
              height: 7,
            ),
            TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(15),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: abu,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: "Masukkan Judul Materi",
                  hintStyle: TextStyle(color: abu, fontFamily: 'Urbanist')),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Soal",
              style: TextStyle(
                  fontWeight: semi, fontFamily: 'Urbanist', color: blacky),
            ),
            SizedBox(
              height: 7,
            ),
            TextField(
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(8, 4, 8, 100),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: abu),
                  borderRadius: BorderRadius.circular(15),
                ),
                // hintText: "Masukkan Soal",
              ),
            ),
            SizedBox(
              height: 17,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Image(
                      image: AssetImage('images/take_photo.png'),
                      width: 51,
                    )),
                SizedBox(
                  width: 30,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Image(
                      image: AssetImage('images/record_video.png'),
                      width: 51,
                    )),
                SizedBox(
                  width: 30,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Image(
                      image: AssetImage('images/choose_file.png'),
                      width: 51,
                    )),
                SizedBox(
                  width: 30,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Image(
                      image: AssetImage('images/insert_link.png'),
                      width: 51,
                    )),
              ],
            ),
            SizedBox(
              height: 17,
            ),
            Text(
              "Atur Batas Waktu",
              style: TextStyle(fontWeight: semi, fontSize: 16, color: blacky),
            ),
            SizedBox(
              height: 7,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {
                    _selectDate();
                  },
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(width: 2, color: abu),
                      fixedSize: Size(180, 50),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.zero,
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.zero))),
                  child: Text(
                    "${dateTime.day} : ${dateTime.month} : ${dateTime.year}",
                    style: TextStyle(
                        color: Colors.black, fontSize: 16, fontWeight: biasa),
                  ),
                ),
                TimeSelect()
              ],
            )
          ],
        ),
      ),
    );
  }

  Future<void> _selectDate() async {
    DateTime? _picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100));

    if (_picked != null) {
      setState(() {
        _dateController.text = _picked.toString().split(" ")[0];
      });
    }
  }
}

class TimeSelect extends StatefulWidget {
  const TimeSelect({super.key});

  @override
  State<TimeSelect> createState() => _TimeSelectState();
}

class _TimeSelectState extends State<TimeSelect> {
  @override
  void initState() {
    dateTime = DateTime.now();
    super.initState();
  }

  DateTime dateTime = DateTime(2024, 2, 1, 7, 20);
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Center(
      child: OutlinedButton(
          child: Text(
            "${dateTime.hour} : ${dateTime.minute} WITA",
            style:
                TextStyle(color: Colors.black, fontSize: 16, fontWeight: biasa),
          ),
          style: OutlinedButton.styleFrom(
              side: BorderSide(width: 2, color: abu),
              fixedSize: Size(180, 50),
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.zero,
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.zero,
                      bottomRight: Radius.circular(10)))),
          onPressed: () {
            showCupertinoModalPopup(
                context: context,
                builder: (context) {
                  return Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("Atur")),
                        Expanded(
                            child: CupertinoDatePicker(
                                mode: CupertinoDatePickerMode.time,
                                initialDateTime: dateTime,
                                minimumDate: DateTime(2000),
                                maximumDate: DateTime.now().add(
                                  const Duration(days: 2 * 365),
                                ),
                                use24hFormat: true,
                                onDateTimeChanged: (date) {
                                  setState(() {
                                    dateTime = date;
                                  });
                                }))
                      ],
                    ),
                  );
                });
          }),
    ));
  }
}
