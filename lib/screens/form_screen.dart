import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:multiselect/multiselect.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _areaController = TextEditingController();
  final TextEditingController _contactController = TextEditingController();
  List<String> crops = [
    'Tomato',
    'Cabbage',
    'Potatoes',
    'Onions',
    'Ladyfinger',
    'Carrots'
  ];
  List<String> selectedCrops = [];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "Enter Farmer Details",
          style: TextStyle(
              color: Colors.black,
              fontSize: width * .06,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xffF2F9F2),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(width * 0.06),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Name',
                  contentPadding: EdgeInsets.all(8),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
              SizedBox(
                height: height * .025,
              ),
              TextField(
                controller: _areaController,
                decoration: const InputDecoration(
                    labelText: 'Area',
                    contentPadding: EdgeInsets.all(8),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    )),
              ),
              SizedBox(
                height: height * .025,
              ),
              TextField(
                controller: _contactController,
                decoration: const InputDecoration(
                  labelText: 'Contact',
                  contentPadding: const EdgeInsets.all(8),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
              SizedBox(
                height: height * .025,
              ),
              DropDownMultiSelect(
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                options: crops,
                selectedValues: selectedCrops,
                onChanged: (value) {
                  print('selected fruit $value');
                  setState(() {
                    selectedCrops = value;
                  });
                  print('you have selected $selectedCrops fruits.');
                },
                whenEmpty: 'Select the crops you sell',
              ),
              SizedBox(
                height: height * .38,
              ),
              SizedBox(
                width: width * .8,
                height: height * .08,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xffC7D458),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                  child: Text(
                    "Save",
                    style: TextStyle(
                        fontSize: width * .05,
                        fontWeight: FontWeight.w600,
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
