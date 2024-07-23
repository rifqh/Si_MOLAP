import 'package:flutter/material.dart';
import 'package:si_molap/Forgot/succes_change.dart';

class ChangePassPage extends StatelessWidget {
  const ChangePassPage({super.key});

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
                "Forgot\nPassword",
                style: TextStyle(
                    fontFamily: 'Urbanist',
                    fontSize: 39,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                "Buat password baru",
                style: TextStyle(
                    fontFamily: 'Urbanist',
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "Masukkan password baru. Pastikan password anda\nberbeda dengan sebelumnya dan mudah diingat.",
                style: TextStyle(
                    fontFamily: 'Urbanist',
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 32,
              ),
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: "Email",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: "Konfirmasi Password",
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const SuccesChange();
                  }));
                },
                child: const Text(
                  "Ubah Password",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.normal),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff2C358B),
                    foregroundColor: Color.fromARGB(255, 17, 21, 72),
                    minimumSize: const Size(double.infinity, 48),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
            ],
          )),
    );
  }
}
