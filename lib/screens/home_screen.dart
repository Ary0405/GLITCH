import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:glitch/widgets/screen_buttons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const routeName = '/home-screen';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // List for storing the data for the buttons
  List<Map<String, dynamic>> data = [
    {
      "text": 'Price Analysis',
      "image": 'assets/images/graph.png',
      "color": 0xffF6795B,
      "route": "price-analysis-screen",
    },
    {
      "text": 'Testing Labs',
      "image": 'assets/images/three test tubes.png',
      "color": 0xffC7D458,
      "route": "testing-screen",
    },
    {
      "text": 'Cold Storages',
      "image": 'assets/images/warehouse.png',
      "color": 0xffECA340,
      "route": "cold-storage",
    },
    {
      "text": 'Network',
      "image":
          'assets/images/Businesswoman is satisfied with business statistics.png',
      "color": 0xff9B5366,
      "route": "connect-business",
    },
    {
      "text": 'Remake',
      "image": 'assets/images/recycling.png',
      "color": 0xff99D47B,
      "route": "remake-screen",
    },
    {
      "text": 'Info',
      "image": 'assets/images/info.png',
      "color": 0xff7582F4,
      "route": "price-analysis-screen",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          // The header of the screen
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.width * 0.07,
              left: MediaQuery.of(context).size.width * 0.07,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Hi Ananya,',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Welcome back!',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () => FirebaseAuth.instance.signOut(),
                    child: Column(
                      children: const [
                        Icon(
                          Icons.logout_rounded,
                          size: 20,
                        ),
                        Text(
                          'LogOut',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // The buttons which will redirect to the respective screens
          Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.75,
              child: GridView.builder(
                itemCount: data.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: MediaQuery.of(context).size.width /
                      (MediaQuery.of(context).size.height / 1.3),
                  crossAxisSpacing: 30,
                  mainAxisSpacing: 30,
                ),
                itemBuilder: (context, i) {
                  return ScreenButtons(
                    text: data[i]['text']!,
                    image: data[i]['image']!,
                    color: data[i]['color'],
                    routeName: data[i]['route']!,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
