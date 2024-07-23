import 'package:flutter/material.dart';
import 'package:si_molap/Dosen/create_task_page.dart';
import 'package:si_molap/Login&SignUp/login_page.dart';
import 'package:si_molap/Properti/pop_up.dart';
import 'package:si_molap/Properti/element.dart';
import 'package:si_molap/Properti/search_bar.dart';
import 'package:si_molap/Dosen/progress_page.dart';

class ClassPage extends StatefulWidget {
  final List<String> items;

  ClassPage({required this.items});

  @override
  _ListClassState createState() => _ListClassState();
}

class _ListClassState extends State<ClassPage> {
  final TextEditingController _searchController = TextEditingController();
  Widget BuildSheet() => Container(
        height: 350,
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginPage();
                }));
              },
              title: Text("Bagikan Link Kelas"),
              contentPadding: EdgeInsets.fromLTRB(8, 0, 8, 0),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CreateTaskPage();
                }));
              },
              title: Text("Tambahkan Laporan"),
              contentPadding: EdgeInsets.fromLTRB(8, 0, 8, 0),
            ),
            const Divider(
              thickness: 1,
              indent: 8,
              endIndent: 8,
            ),
            ListTile(
              title: Text("Edit"),
              contentPadding: EdgeInsets.fromLTRB(8, 0, 8, 0),
            ),
            ListTile(
              title: Text("Arsipkan"),
              contentPadding: EdgeInsets.fromLTRB(8, 0, 8, 0),
            ),
            Divider(
              thickness: 1,
              indent: 8,
              endIndent: 8,
            ),
            ListTile(
              title: Text(
                "Hapus",
                style: TextStyle(color: Colors.red),
              ),
              contentPadding: EdgeInsets.fromLTRB(8, 0, 8, 0),
            ),
          ],
        ),
      );
  @override
  Widget build(BuildContext context) {
    List<Widget> listItems = [];
    for (int i = 0; i < widget.items.length; i++) {
      listItems.add(
        Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(8, 0, 8, 0),
              title: Text(
                widget.items[i],
                style: TextStyle(
                    fontWeight: semi, fontSize: 16, color: Color(0xff323232)),
              ),
              subtitle: Text(
                'Class ${i + 1}',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const ProgressPage();
                }));
              },
              leading: Image(
                image: AssetImage("images/logo_class.png"),
                height: 30,
              ),
              trailing: IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                        context: context, builder: (context) => BuildSheet());
                  },
                  icon: Icon(Icons.more_vert_outlined)),
            ),
            if (i <
                widget.items.length -
                    1)
              Divider(
                indent: 60,
                endIndent: 20,
                color: Color(0xffADADAD),
                thickness: 1,
              ),
          ],
        ),
      );
    }

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
          children: [
            Row(
              children: [
                Text(
                  "Class",
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
            CustomSearchField(controller: _searchController),
            const SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Class",
                      style: TextStyle(
                          color: blacky,
                          fontFamily: 'Urbanist',
                          fontWeight: semi,
                          fontSize: 16),
                    ),
                  ],
                )
              ],
            ),
            Column(children: listItems),
          ],
        ),
      ),
    );
  }
}
