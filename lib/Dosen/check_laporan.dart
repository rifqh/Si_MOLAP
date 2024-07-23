import 'package:flutter/material.dart';
import 'package:si_molap/Properti/comment_list_screen.dart';
import 'package:si_molap/Properti/element.dart';

class CheckPage extends StatefulWidget {
  const CheckPage({super.key});

  @override
  State<CheckPage> createState() => _CheckPageState();
}

class _CheckPageState extends State<CheckPage> {
  bool firstValue = false;

  @override
  Widget build(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffffffff),
        title: Text(
          "Proses Input Output",
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
            Row(
              children: [
                Image(
                  image: AssetImage("images/person.png"),
                  height: 35,
                ),
                SizedBox(
                  width: 7,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Anggi Rifqiadi",
                      style: TextStyle(fontWeight: semi, color: blacky),
                    ),
                    Text(
                      "29 Sep, 15.00 WITA",
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 25),
            Row(
              children: [
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
                              color: Color(0xffeaeaea),
                              borderRadius: BorderRadius.circular(10)),
                          height: 85,
                          width: 110,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "https://openai.com/...",
                                style: TextStyle(fontSize: 12),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Icon(
                                Icons.link_rounded,
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
                ),
              ],
            ),
            Divider(
              thickness: 1,
              color: Color(0xffADADAD),
            ),
            SizedBox(
              height: 18,
            ),
            Text(
              "Komentar",
              style: TextStyle(fontSize: 16, fontWeight: biasa),
            ),
            CommentListScreen(),
            TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(24, 0, 24, 0),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: abu),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "Tambahkan komentar",
                  hintStyle: TextStyle(fontSize: 14, color: abu)),
            ),
          ],
        ),
      ),
    );
  }
}
