import 'package:flutter/material.dart';

class PriceAnalysisScreen extends StatefulWidget {
  const PriceAnalysisScreen({super.key});

  @override
  State<PriceAnalysisScreen> createState() => _PriceAnalysisScreenState();
}

class _PriceAnalysisScreenState extends State<PriceAnalysisScreen> {
  List<Map<dynamic, dynamic>> data = [
    {
      'text': 'Tomatoes',
      'image': 'assets/images/tomato.png',
    },
    {
      'text': 'Carrots',
      'image': 'assets/images/carrot.png',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F9F2),
      appBar: AppBar(
        title: const Text('Things you are selling'),
      ),
      body: GridView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: data.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height / 10),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.width * .02,
              left: MediaQuery.of(context).size.width * .05,
              right: MediaQuery.of(context).size.width * .05,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * .05,
                      right: MediaQuery.of(context).size.width * .02,
                    ),
                    child: Image.asset(
                      data[index]['image'],
                      height: MediaQuery.of(context).size.height * .08,
                      width: MediaQuery.of(context).size.width * .2,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .57,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          data[index]['text'],
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * .05,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed(
                              'graphs_screen',
                            );
                          },
                          child: Image.asset(
                            'assets/images/chart.png',
                            height: MediaQuery.of(context).size.height * .04,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
