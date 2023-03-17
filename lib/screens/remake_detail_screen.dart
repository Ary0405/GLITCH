import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RemakeDetailScreen extends StatefulWidget {
  const RemakeDetailScreen({super.key});
  static const routeName = 'remake-detail-screen';
  @override
  State<RemakeDetailScreen> createState() => _RemakeDetailScreenState();
}

class _RemakeDetailScreenState extends State<RemakeDetailScreen> {
  List<Map<dynamic, dynamic>> data = [
    {
      'heading': 'Tomato Sauce',
      'description':
          'Tomato Ketchup and Tomato Sauce means the product prepared by blending tomato juice/Puree/Paste of appropriate concentration with nutritive sweeteners, salt, vinegar, spices and condiments and any other ingredients suitable to the product and heating to the required consistency',
    },
    {
      'heading': 'Tomato Puree',
      'description':
          'Tomato Puree means the product prepared by blending tomato juice/Puree/Paste of appropriate concentration with nutritive sweeteners, salt, vinegar, spices and condiments and any other ingredients suitable to the product and heating to the required consistency'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          "Tomatoes",
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height * .8,
        child: GridView.builder(
          itemCount: data.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: MediaQuery.of(context).size.width /
                (MediaQuery.of(context).size.height / 3.5),
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
    );
  }
}
