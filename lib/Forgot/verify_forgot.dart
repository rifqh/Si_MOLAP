import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:si_molap/Forgot/succes_change.dart';
import 'package:si_molap/Properti/element.dart';

class VerifyForgot extends StatefulWidget {
  const VerifyForgot({super.key});

  @override
  State<VerifyForgot> createState() => _VerifyForgotState();
}

class _VerifyForgotState extends State<VerifyForgot> {
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
                "Account\nVerification",
                style: TextStyle(
                    fontFamily: 'Urbanist', fontSize: 39, fontWeight: semi),
              ),
              SizedBox(
                height: 45,
              ),
              Center(
                child: Column(
                  children: [
                    Text(
                      "Cek email anda!",
                      style: TextStyle(
                          fontFamily: 'Urbanist',
                          fontWeight: biasa,
                          fontSize: 16),
                    ),
                    Text(
                      "Masukkan 4 digit kode OTP yang telah dikirim ke email anda",
                      style: TextStyle(
                          fontFamily: 'Urbanist',
                          fontWeight: biasa,
                          fontSize: 12),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 26,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 72,
                    height: 92,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffffffff),
                        contentPadding: EdgeInsets.all(25),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: abu)),
                      ),
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Urbanist',
                          fontWeight: semi),
                      textAlign: TextAlign.center,
                      inputFormatters: [LengthLimitingTextInputFormatter(1)],
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  SizedBox(
                    width: 23,
                  ),
                  Container(
                    width: 72,
                    height: 92,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffffffff),
                        contentPadding: EdgeInsets.all(25),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: abu)),
                      ),
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Urbanist',
                          fontWeight: semi),
                      textAlign: TextAlign.center,
                      inputFormatters: [LengthLimitingTextInputFormatter(1)],
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  SizedBox(
                    width: 23,
                  ),
                  Container(
                    width: 72,
                    height: 92,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffffffff),
                        contentPadding: EdgeInsets.all(25),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: abu)),
                      ),
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Urbanist',
                          fontWeight: semi),
                      textAlign: TextAlign.center,
                      inputFormatters: [LengthLimitingTextInputFormatter(1)],
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  SizedBox(
                    width: 23,
                  ),
                  Container(
                    width: 72,
                    height: 92,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffffffff),
                        contentPadding: EdgeInsets.all(25),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: abu)),
                      ),
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Urbanist',
                          fontWeight: semi),
                      textAlign: TextAlign.center,
                      inputFormatters: [LengthLimitingTextInputFormatter(1)],
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 26.55,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const SuccesChange();
                  }));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: mainColor,
                    foregroundColor: mainColor,
                    minimumSize: const Size(double.infinity, 48),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: Text(
                  "Verifikasi",
                  style: TextStyle(
                      color: Colors.white, fontSize: 16, fontWeight: biasa),
                ),
              ),
              SizedBox(
                height: 19,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Kirim Ulang",
                    style: TextStyle(
                        color: mainColor,
                        fontSize: 16,
                        fontFamily: 'Urbanist',
                        fontWeight: biasa),
                  ),
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 45),
                      backgroundColor: Color.fromARGB(255, 255, 255, 255),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                              width: 1,
                              style: BorderStyle.solid,
                              color: mainColor))),
                ),
              ),
            ],
          )),
    );
  }
}
