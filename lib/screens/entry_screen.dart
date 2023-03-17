import 'package:flutter/material.dart';

class EntryScreen extends StatelessWidget {
  const EntryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 1,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: height * .1,
              ),
              Text(
                "Ag-Grow",
                style: TextStyle(
                  fontSize: width * .07,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xffb064514),
                ),
              ),
              SizedBox(
                height: height * .55,
              ),
              SizedBox(
                width: width * .7,
                height: height * .08,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('form-screen');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xffC7D458),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                        fontSize: width * .06,
                        // fontWeight: FontWeight.w700,
                        color: const Color(0xffb064514)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
