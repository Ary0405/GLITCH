import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RemakeScreen extends StatefulWidget {
  const RemakeScreen({super.key});
  static const routename = 'remake-screen';
  @override
  State<RemakeScreen> createState() => _RemakeScreenState();
}

class _RemakeScreenState extends State<RemakeScreen> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      backgroundColor: const Color(0xffF2F9F2),
      appBar: AppBar(
        title: const Text('Things you are selling'),
      ),
      body: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection('users')
              .doc(user.email)
              .snapshots(),
          builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            final dataSnapshot = snapshot.data!.data() as Map<String, dynamic>;
            print(dataSnapshot['crops']);
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Choose the product',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .6,
                  child: GridView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: dataSnapshot['crops'].length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      childAspectRatio: MediaQuery.of(context).size.width /
                          (MediaQuery.of(context).size.height / 10),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                      var image;
                      if (dataSnapshot['crops'][index] == 'Tomato') {
                        image = 'assets/images/tomato.png';
                      } else if (dataSnapshot['crops'][index] == 'Cabbage') {
                        image = 'assets/images/cabbage.png';
                      } else if (dataSnapshot['crops'][index] == 'Potatoes') {
                        image = 'assets/images/potato.png';
                      } else if (dataSnapshot['crops'][index] == 'Onions') {
                        image = 'assets/images/onion.png';
                      } else if (dataSnapshot['crops'][index] == 'Ladyfinger') {
                        image = 'assets/images/ladyfinger.png';
                      } else if (dataSnapshot['crops'][index] == 'Carrots') {
                        image = 'assets/images/carrot.png';
                      }
                      return InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            'remake-detail-screen',
                          );
                        },
                        child: Padding(
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
                                    left:
                                        MediaQuery.of(context).size.width * .05,
                                    right:
                                        MediaQuery.of(context).size.width * .02,
                                  ),
                                  child: Image.asset(
                                    image,
                                    height: MediaQuery.of(context).size.height *
                                        .08,
                                    width:
                                        MediaQuery.of(context).size.width * .2,
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * .57,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        dataSnapshot['crops'][index],
                                        style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .05,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          }),
    );
  }
}
