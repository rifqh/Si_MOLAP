import 'package:flutter/material.dart';
import 'package:si_molap/Forgot/email_forgot.dart';
import 'package:si_molap/Menu/navbar.dart';
import 'package:si_molap/Login&SignUp/regist_page.dart';
import '../Properti/element.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(height: 125),
            Container(
              height: 140,
              child: const Center(
                  child: Image(
                      image: AssetImage(
                "images/logo_U.png",
              ))),
            ),
            const SizedBox(
              height: 26.57,
            ),
            Text(
              "Selamat Datang di SIMOLAP",
              style: TextStyle(
                  color: blacky,
                  fontFamily: 'Urbanist',
                  fontWeight: semi,
                  fontSize: 25),
            ),
            const SizedBox(
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
            const SizedBox(
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
            Row(
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return InputEmailPage();
                      }));
                    },
                    child: Text(
                      "Lupa Password?",
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Urbanist',
                          fontWeight: semi,
                          color: mainColor),
                    )),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return NavBar();
                }));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: mainColor,
                  minimumSize: const Size(double.infinity, 48),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: const Text(
                "Masuk",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(height: 160),
            Container(
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const RegistPage();
                      }));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 255, 255, 255),
                        minimumSize: const Size(280, 45),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(
                                width: 1,
                                style: BorderStyle.solid,
                                color: mainColor))),
                    child: Text(
                      "Buat Akun Baru",
                      style: TextStyle(
                          color: mainColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(20, 45),
                        foregroundColor: Colors.white,
                        backgroundColor:
                            const Color.fromARGB(255, 255, 255, 255),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(
                                width: 1,
                                style: BorderStyle.solid,
                                color: mainColor))),
                    child: const Image(
                      image: AssetImage("images/google.png"),
                      height: 29,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
