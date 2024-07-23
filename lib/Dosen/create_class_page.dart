import 'package:flutter/material.dart';
import 'package:si_molap/Properti/element.dart';

class CreateClassPage extends StatelessWidget {
  const CreateClassPage({super.key});

  @override
  Widget build(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffffffff),
        title: Text("Buat Kelas"),
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
                onPressed: () {},
                child: Text(
                  "Buat",
                  style: TextStyle(color: Colors.white, fontSize: 12),
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
            Text(
              "Nama Kelas",
              style: TextStyle(fontWeight: semi),
            ),
            SizedBox(
              height: 7,
            ),
            TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(15),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                hintText: "Masukkan nama kelas",
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Mata Kuliah",
              style: TextStyle(fontWeight: semi),
            ),
            SizedBox(
              height: 7,
            ),
            TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(15),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                hintText: "Masukkan mata kuliah",
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Dosen",
              style: TextStyle(fontWeight: semi),
            ),
            SizedBox(
              height: 7,
            ),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.person_add_alt_outlined,
                  color: mainColor,
                ),
                hintText: "Tambahkan Dosen",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
