import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:multiselect/multiselect.dart';

class TestingScreen extends StatefulWidget {
  const TestingScreen({super.key});

  @override
  State<TestingScreen> createState() => _TestingScreenState();
}

class _TestingScreenState extends State<TestingScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _areaController = TextEditingController();
  final TextEditingController _contactController = TextEditingController();
  List<String> states = [
    'Punjab',
    'Odisha',
    'Andhra Pradesh',
    'Bihar',
    'Maharashtra',
    'Punjab',
    'Telangana',
    'Tamil Nadu',
    'Uttarakhand',
    'Assam',
  ];
  List<String> districts = [
    'Amritsar',
    'Sambalpur',
    'Kurnool',
    'Muzaffarpur',
    'Nashik',
    'Ludhiana',
    'Khammam',
    'Coimbatore',
    'Dehradun',
    'Dibrugarh'
  ];
  List<String> selectedStates = [];
List<String> selectedDistricts = [];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        // centerTitle: false,
        title: Text(
          "Testing Labs",
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
        // child: SingleChildScrollView(
        //   child: Column(
        //     children: [
        //       TextField(
        //         controller: _nameController,
        //         decoration: const InputDecoration(
        //           labelText: 'Name',
        //           contentPadding: EdgeInsets.all(8),
        //           filled: true,
        //           fillColor: Colors.white,
        //           enabledBorder: OutlineInputBorder(
        //             borderRadius: BorderRadius.all(Radius.circular(10)),
        //             borderSide: BorderSide.none,
        //           ),
        //           focusedBorder: OutlineInputBorder(
        //             borderSide: BorderSide(color: Colors.green),
        //             borderRadius: BorderRadius.all(Radius.circular(10)),
        //           ),
        //         ),
        //       ),
        //       SizedBox(
        //         height: height * .025,
        //       ),
        //       TextField(
        //         controller: _areaController,
        //         decoration: const InputDecoration(
        //             labelText: 'Area',
        //             contentPadding: EdgeInsets.all(8),
        //             filled: true,
        //             fillColor: Colors.white,
        //             enabledBorder: OutlineInputBorder(
        //               borderRadius: BorderRadius.all(Radius.circular(10)),
        //               borderSide: BorderSide.none,
        //             ),
        //             focusedBorder: OutlineInputBorder(
        //               borderSide: BorderSide(color: Colors.green),
        //               borderRadius: BorderRadius.all(Radius.circular(10)),
        //             )),
        //       ),
        //       SizedBox(
        //         height: height * .025,
        //       ),
        //       TextField(
        //         controller: _contactController,
        //         decoration: const InputDecoration(
        //           labelText: 'Contact',
        //           contentPadding: const EdgeInsets.all(8),
        //           filled: true,
        //           fillColor: Colors.white,
        //           enabledBorder: OutlineInputBorder(
        //             borderRadius: BorderRadius.all(Radius.circular(10)),
        //             borderSide: BorderSide.none,
        //           ),
        //           focusedBorder: OutlineInputBorder(
        //             borderSide: BorderSide(color: Colors.green),
        //             borderRadius: BorderRadius.all(Radius.circular(10)),
        //           ),
        //         ),
        //       ),
              SizedBox(
                height: height * .025,
              ),
              Row(
  children: [
    Expanded(
      child: TextFormField(
        decoration: InputDecoration(
          labelText: 'Choose State',
        ),
      ),
    ),
    SizedBox(width: 10), // add some space between the text box and the drop-down menu
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
                options: states,
                selectedValues: selectedStates,
                onChanged: (value) {
                  print('selected state $value');
                  setState(() {
                    selectedStates = value;
                  });
                  print('you have selected $selectedStates fruits.');
                },
                whenEmpty: 'State',
              ),
  ],
)

              s
              
              
            
          ),
        ),
      ),
    );
  }
}
