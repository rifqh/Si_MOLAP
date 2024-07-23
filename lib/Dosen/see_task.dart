import 'package:flutter/material.dart';
import 'package:si_molap/Properti/pop_up.dart';
import 'package:si_molap/Properti/element.dart';

class SeeTask extends StatefulWidget {
  const SeeTask({super.key});

  @override
  State<SeeTask> createState() => _SeeTaskState();
}

class _SeeTaskState extends State<SeeTask> {
  @override
  Widget build(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
    return Scaffold(
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
            SizedBox(
              height: 27,
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
              height: 10,
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
    );
  }
}
