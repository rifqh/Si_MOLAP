import 'package:flutter/material.dart';
import 'package:si_molap/Properti/pop_up.dart';
import 'package:si_molap/Properti/element.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class SeeTaskMaha extends StatefulWidget {
  const SeeTaskMaha({super.key});

  @override
  State<SeeTaskMaha> createState() => _SeeTaskState();
}

class _SeeTaskState extends State<SeeTaskMaha> {
  String dropdownValue = 'One';
  @override
  Widget build(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
        child: ElevatedButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.file_upload_outlined,
                color: Colors.white,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Upload Laporan",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          style: ElevatedButton.styleFrom(
              backgroundColor: mainColor,
              foregroundColor: mainColor,
              minimumSize: const Size(358, 45),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8))),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xffffffff),
        centerTitle: true,
        title: Text(
          "Laporan Praktikum 1",
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
        actions: [SeeTaskPop()],
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(5.0),
            child: Container(
              height: 1.5,
              color: Colors.grey.withOpacity(0.5),
            )),
      ),
      body: SlidingUpPanel(
        minHeight: 145,
        maxHeight: 470,
        panel: Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
            child: Column(
              children: [
                buildDragHandle(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Laporan Anda",
                      style: TextStyle(fontSize: 16),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        "Edit",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: mainColor,
                          foregroundColor: mainColor,
                          minimumSize: const Size(80, 30),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Row(
                  children: [
                    Text(
                      "Lampiran",
                      style: TextStyle(
                          fontSize: 12, fontWeight: biasa, color: blacky),
                    ),
                  ],
                ),
                Image(
                  image: AssetImage("images/empty_box.png"),
                  height: 155,
                ),
                Text(
                  "Belum ada lampiran yang diunggah",
                  style: TextStyle(fontSize: 12),
                )
              ],
            )),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Proses Input / Output",
                style: TextStyle(fontFamily: 'Urbanist', fontSize: 16),
              ),
              Text(
                "Batas waktu sep 27, 17.00 PM",
                style: TextStyle(color: abu, fontSize: 10, fontWeight: biasa),
              ),
              SizedBox(
                height: 13,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xffEAEAEA),
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                child: DropdownButton<String>(
                    borderRadius: BorderRadius.circular(10),
                    underline: SizedBox(),
                    focusColor: abu,
                    value: dropdownValue,
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: blacky,
                    ),
                    style: TextStyle(color: Colors.black),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                    items: [
                      DropdownMenuItem<String>(
                        child: Text(
                          "Ditugaskan",
                          style: TextStyle(fontSize: 16),
                        ),
                        value: 'One',
                      ),
                      DropdownMenuItem<String>(
                        child:
                            Text("Dikerjakan", style: TextStyle(fontSize: 16)),
                        value: 'Two',
                      ),
                      DropdownMenuItem<String>(
                        child: Text(
                          "Selesai",
                          style: TextStyle(fontSize: 16),
                        ),
                        value: 'Three',
                      ),
                    ]),
              ),
              SizedBox(
                height: 13,
              ),
              Text(
                "Soal",
                style: TextStyle(fontWeight: semi),
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                "1. Jelaskan apa yang kamu ketahui  tentang proses input output di Linux.\n2. Jelaskan apa itu file descriptor di Linux dan berikan contoh penggunaan file descriptor.\n3. Jelaskan konsep pembelokan (redirection) di Linux dan berikan contoh bagaimana cara mengarahkan output dari sebuah perintah ke file dan mengarahkan kesalahan (error) ke file yang berbeda.",
                style: TextStyle(fontSize: 12.5),
              ),
              SizedBox(
                height: 15,
              ),
              Divider(
                thickness: 1,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Lampiran",
                style: TextStyle(
                    fontWeight: semi, color: blacky, fontFamily: 'Urbanist'),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Image(
                          image: AssetImage("images/see_image.png"),
                          height: 85,
                        ),
                      ),
                      Text("contoh.jpg")
                    ],
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Image(
                          image: AssetImage("images/see_video.png"),
                          height: 85,
                        ),
                      ),
                      Text("contoh.mp4")
                    ],
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                        decoration: BoxDecoration(
                            color: Color(0xffEAEAEA),
                            borderRadius: BorderRadius.circular(10)),
                        height: 85,
                        width: 110,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Format laporan.docx",
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Icon(
                              Icons.description_rounded,
                              size: 20,
                              color: mainColor,
                            ),
                          ],
                        ),
                      ),
                      Text(" ")
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDragHandle() => Center(
          child: Image(
        image: AssetImage("images/arrow_up.png"),
        width: 43,
      ));
}
