import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:glitch/widgets/screen_buttons.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key});
  static const routeName = 'info-screen';
  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  List<Map<dynamic, dynamic>> data = [
    {
      'heading':
          'Rains lash several parts of India, IMD asks farmers to postpone harvesting',
      'description':
          'The western disturbance-induced rains provided respite from high temperatures, but sent farmers scrambling to protect their crops. Some parts of hill states of Uttarakhand and Himachal Pradesh witnessed snowfall.',
    },
    {
      'heading':
          'As protesting farmers march towards Mumbai, Maha CM, Dy CM meet their delegation',
      'description':
          'Earlier, the state government rushed ministers Dada Bhuse and Atul Save to hold a discussion with the farmers whose demands include an immediate financial relief of Rs 600 per quintal to onion growers, uninterrupted electricity supply for 12 hours and a waiver of agriculture loans.'
    }
  ];

  List<Map<String, dynamic>> dataCards = [
    {
      "text": 'Farm Laws',
      "image": 'assets/images/farm.png',
      "color": 0xffF6795B,
    },
    {
      "text": 'Subsidies',
      "image": 'assets/images/discount.png',
      "color": 0xffC7D458,
    },
    {
      "text": 'Crop Calender',
      "image": 'assets/images/calender.png',
      "color": 0xffECA340,
    },
    {
      "text": 'Guides',
      "image":
          'assets/images/book.png',
      "color": 0xff9B5366,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xffF2F9F2),
        appBar: AppBar(
          title: const Text('Info'),
          bottom: const TabBar(
            tabs: [
              Padding(
                padding: EdgeInsets.only(
                  bottom: 5,
                ),
                child: Text(
                  'News',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: 5,
                ),
                child: Text(
                  'Education',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .8,
              child: GridView.builder(
                itemCount: data.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: MediaQuery.of(context).size.width /
                      (MediaQuery.of(context).size.height / 3),
                  crossAxisSpacing: 30,
                  mainAxisSpacing: 30,
                ),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              data[index]['heading'],
                              style: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              data[index]['description'],
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
                    padding: EdgeInsets.all(
                        MediaQuery.of(context).size.width * 0.05),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.75,
                      child: GridView.builder(
                        itemCount: dataCards.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: MediaQuery.of(context).size.width /
                              (MediaQuery.of(context).size.height / 1.3),
                          crossAxisSpacing: 30,
                          mainAxisSpacing: 30,
                        ),
                        itemBuilder: (context, i) {
                          return ScreenButtons(
                            text: dataCards[i]['text']!,
                            image: dataCards[i]['image']!,
                            color: dataCards[i]['color'],
                            routeName: null,
                          );
                        },
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
