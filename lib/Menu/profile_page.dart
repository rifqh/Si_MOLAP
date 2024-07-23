import 'package:flutter/material.dart';
import 'package:si_molap/Forgot/succes_change.dart';
import 'package:si_molap/Properti/element.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Profile",
          style: TextStyle(fontSize: 16, color: blacky),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: mainColor,
            )),
        backgroundColor: Colors.white,
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image(
                    image: AssetImage("images/person_profile.png"),
                    width: 86,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Muhammad Lemon",
                        style: TextStyle(
                            fontSize: 20, fontWeight: semi, color: blacky),
                      ),
                      Row(
                        children: [
                          Text(
                            "60900123022",
                            style: TextStyle(fontSize: 12, color: blacky),
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          Image(
                            image: AssetImage("images/edit_nim.png"),
                            height: 16,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Full Name",
                style: TextStyle(fontWeight: semi, color: blacky),
              ),
              SizedBox(
                height: 8,
              ),
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: "Masukkan Nama",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Email",
                style: TextStyle(fontWeight: semi, color: blacky),
              ),
              SizedBox(
                height: 8,
              ),
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: "Masukkan Email",
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Phone Number",
                style: TextStyle(fontWeight: semi, color: blacky),
              ),
              SizedBox(
                height: 8,
              ),
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: "Masukkan Nomor Telepon",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const SuccesChange();
                  }));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: mainColor,
                    foregroundColor: Color.fromARGB(255, 17, 21, 72),
                    minimumSize: const Size(80, 30),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                child: Text(
                  "Edit",
                  style: TextStyle(
                      color: Colors.white, fontSize: 12, fontWeight: semi),
                ),
              ),
            ],
          )),
    );
  }
}
