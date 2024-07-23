import 'package:flutter/material.dart';
import 'package:si_molap/Forgot/verify_forgot.dart';
import 'package:si_molap/Properti/element.dart';

class InputEmailPage extends StatelessWidget {
  const InputEmailPage({super.key});

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
                    fontWeight: semi,
                    color: blacky),
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                "Atur Ulang Password",
                style: TextStyle(
                    fontFamily: 'Urbanist',
                    fontSize: 20,
                    fontWeight: semi,
                    color: blacky),
              ),
              Text(
                "Silahkan masukkan email anda untuk atur ulang password",
                style: TextStyle(
                    fontFamily: 'Urbanist', fontSize: 14, fontWeight: biasa),
              ),
              SizedBox(
                height: 32,
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
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const VerifyForgot();
                  }));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: mainColor,
                    foregroundColor: mainColor,
                    minimumSize: const Size(double.infinity, 48),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                child: Text(
                  "Atur Ulang",
                  style: TextStyle(
                      color: Colors.white, fontSize: 16, fontWeight: biasa),
                ),
              ),
            ],
          )),
    );
  }
}
