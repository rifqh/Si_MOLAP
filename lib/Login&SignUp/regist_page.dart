import 'package:flutter/material.dart';
import 'package:si_molap/Login&SignUp/verify_daftar.dart';
import 'package:si_molap/Properti/element.dart';

class RegistPage extends StatefulWidget {
  const RegistPage({super.key});

  @override
  State<RegistPage> createState() => _RegistPageState();
}

class _RegistPageState extends State<RegistPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      resizeToAvoidBottomInset: false,
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 80,
              ),
              Text(
                "Let's get\nstarted",
                style: TextStyle(
                    fontFamily: 'Urbanist',
                    fontSize: 39,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(24, 12, 24, 12),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: abu),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Nama pengguna",
                    hintStyle: TextStyle(fontSize: 14, color: abu)),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(24, 12, 24, 12),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: abu),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Email",
                    hintStyle: TextStyle(fontSize: 14, color: abu)),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(24, 12, 24, 12),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: abu),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Password",
                    hintStyle: TextStyle(fontSize: 14, color: abu)),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(24, 12, 24, 12),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: abu),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Konfirmasi Password",
                    hintStyle: TextStyle(fontSize: 14, color: abu)),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const VerifyPage();
                  }));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff2C358B),
                    foregroundColor: Color.fromARGB(255, 17, 21, 72),
                    minimumSize: const Size(double.infinity, 48),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                child: Text(
                  "Daftar",
                  style: TextStyle(
                      color: Colors.white, fontSize: 16, fontWeight: biasa),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                  child: Text(
                "Atau lanjutkan dengan",
                style: TextStyle(fontFamily: 'Urbanist', fontWeight: semi),
              )),
              SizedBox(
                height: 15,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Image(
                    image: AssetImage("images/google2.png"),
                    height: 25,
                  ),
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 45),
                      backgroundColor: Color.fromARGB(255, 255, 255, 255),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                              width: 1,
                              style: BorderStyle.solid,
                              color: Color(0xff2C358B)))),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Punya Akun?",
                    style: TextStyle(color: Color(0xffC0C0C0)),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Masuk",
                        style: TextStyle(color: Color(0xff2C358B)),
                      ))
                ],
              )
            ],
          )),
    );
  }
}
