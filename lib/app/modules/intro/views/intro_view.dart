import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:validatinglanguange/app/routes/app_pages.dart';

import '../controllers/intro_controller.dart';

class IntroView extends GetView<IntroController> {
  const IntroView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.fromLTRB(30, 50, 30, 20),
      child: Stack(
        children: [
          Column(
            children: [
              // Aplikasi apakah ini ?
              Text(
                "Aplikasi apakah ini ?",
                style: GoogleFonts.montserrat(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(""),
              Text(
                "Aplikasi ini merupakan aplikasi untuk memvalidasi string bahasa indonesia, dengan menggunakan metode table filling (CYK). Aplikasi ini berbasis multiplatform sehingga dapat di jalankan baik di android, di ios, maupun desktop bahkan web.",
                style: GoogleFonts.montserrat(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              // Perkenalan
              Text(
                "Authors",
                textAlign: TextAlign.end,
                style: GoogleFonts.montserrat(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(""),
              AuthorsTile(
                name: "Ni Made Julia Budiantari",
                nim: "2108561004",
              ),
              AuthorsTile(
                name: "Putu Agus Dharma Kusuma",
                nim: "2108561009",
              ),
              AuthorsTile(
                name: "Dimas Firmansyah",
                nim: "2108561035",
              ),
              AuthorsTile(
                name: "Deva Krishna Ananda",
                nim: "2108561114",
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Positioned(
            bottom: 30,
            right: 0,
            child: Align(
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.black),
                onPressed: () {
                  Get.offAndToNamed(Routes.HOME);
                },
                child: Container(
                  width: 100,
                  child: Center(
                    child: AutoSizeText(
                      "Let's Go",
                      maxLines: 1,
                      style: GoogleFonts.montserrat(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

class AuthorsTile extends StatelessWidget {
  const AuthorsTile({
    required this.name,
    required this.nim,
    Key? key,
  }) : super(key: key);

  final String name;
  final String nim;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.people,
        color: Colors.black,
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name),
          Text(nim),
        ],
      ),
    );
  }
}
