import 'package:flutter/material.dart';
import 'package:si_molap/Menu/navbar.dart';
import 'package:si_molap/Properti/element.dart';

class SuccesRegist extends StatelessWidget {
  const SuccesRegist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 250),
            Image(
              image: AssetImage(
                "images/centang.png",
              ),
              height: 104,
            ),
            Text(
              "Berhasil",
              style: TextStyle(
                  color: blacky,
                  fontFamily: 'Urbanist',
                  fontSize: 31,
                  fontWeight: semi),
            ),
            SizedBox(
              height: 7,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Text(
                "Akun anda berhasil dibuat. Klik lanjutkan\nuntuk masuk ke halaman utama",
                style: TextStyle(
                    fontFamily: 'Urbanist',
                    fontSize: 18,
                    fontWeight: biasa,
                    color: abu),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return NavBar();
                  }));
                },
                child: const Text(
                  "Lanjutkan",
                  style: TextStyle(
                      fontFamily: 'Urbanist',
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.normal),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: mainColor,
                    foregroundColor: mainColor,
                    minimumSize: const Size(double.infinity, 48),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
