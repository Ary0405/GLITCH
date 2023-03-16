import 'package:flutter/material.dart';

class ScreenButtons extends StatelessWidget {
  const ScreenButtons({
    super.key,
    required this.text,
    required this.image,
    required this.color,
    required this.routeName,
  });
  final String text;
  final String image;
  final dynamic color;
  final String routeName;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(routeName);
      },
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.15,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          color: Color(color),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.07,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * .7,
                    child: Text(
                      text,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.032,
              ),
              Container(
                alignment: Alignment.bottomRight,
                height: MediaQuery.of(context).size.height * .23,
                child: ClipRRect(
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //),
            ],
          ),
        ),
      ),
    );
  }
}
