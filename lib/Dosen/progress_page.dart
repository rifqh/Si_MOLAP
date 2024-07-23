import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:si_molap/Properti/element.dart';
import 'package:si_molap/Mahasiswa/see_task_m.dart';

class ProgressPage extends StatefulWidget {
  const ProgressPage({super.key});

  @override
  State<ProgressPage> createState() => _ProgressPageState();
}

class _ProgressPageState extends State<ProgressPage> {
  String dropdownValue = 'A';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
              centerTitle: true,
              backgroundColor: Color(0xffffffff),
              title: DropdownButton<String>(
                  value: dropdownValue,
                  icon: Icon(Icons.arrow_drop_down),
                  style: TextStyle(color: Colors.black, height: 2),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                  items: [
                    DropdownMenuItem<String>(
                      child: Text(
                        "SOK - Kelas A",
                        style: TextStyle(fontSize: 16),
                      ),
                      value: 'A',
                    ),
                    DropdownMenuItem<String>(
                      child: Text("SOK - Kelas C"),
                      value: 'B',
                    ),
                    DropdownMenuItem<String>(
                      child: Text(
                        "SOK - Kelas C",
                        style: TextStyle(fontSize: 16),
                      ),
                      value: 'C',
                    ),
                  ]),
              leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_rounded,
                    color: mainColor,
                  )),
              actions: [
                Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 16, 0),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_horiz_rounded,
                          color: mainColor,
                        ))),
              ],
              bottom: const TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [
                  Tab(
                    child: Text("Board"),
                  ),
                  Tab(
                    child: Text("About"),
                  ),
                ],
              )),
          body: TabBarView(children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      height: 106,
                      width: 285,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffDBDBDB),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Ditugaskan",
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return SeeTaskMaha();
                                }));
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                foregroundColor: mainColor,
                                backgroundColor: mainColor,
                              ),
                              child: Row(
                                children: [
                                  Image(
                                    image: AssetImage("images/book.png"),
                                    height: 27,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Laporan Praktikum 1",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  )
                                ],
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      height: 50,
                      width: 285,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffDBDBDB),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dikerjakan",
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      height: 106,
                      width: 285,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffDBDBDB),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Selesai",
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return SeeTaskMaha();
                                }));
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                foregroundColor: mainColor,
                                backgroundColor: mainColor,
                              ),
                              child: Row(
                                children: [
                                  Image(
                                    image: AssetImage("images/book.png"),
                                    height: 27,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Laporan Praktikum 2",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  )
                                ],
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 33),
                  Text(
                    "Nama Kelas",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: semi,
                    ),
                  ),
                  Text(
                    "Algoritma Pemrograman",
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Text(
                    "Dibuat Oleh",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: semi,
                    ),
                  ),
                  Text(
                    "Anggi Rifqiadi",
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Text(
                    "Dibuat pada",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: semi,
                    ),
                  ),
                  Text(
                    "07 September 2024",
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            )
          ]),
        ));
  }
}
