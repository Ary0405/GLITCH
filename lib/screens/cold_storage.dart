import 'package:flutter/material.dart';

class ColdStorage extends StatefulWidget {
  const ColdStorage({super.key});
  static const routeName = 'cold-storage';
  @override
  State<ColdStorage> createState() => _ColdStorageState();
}

class _ColdStorageState extends State<ColdStorage> {
  List<String> states = [
    'Punjab',
    'Odisha',
    'Andhra Pradesh',
    'Bihar',
    'Maharashtra',
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
  String state = "";
  String district = "";
  bool isSwitched = false;
  String selectedStates = 'Punjab';
  String selectedDistricts = 'Amritsar';

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          "Cold Storage",
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * .05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Choose State',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: DropdownButtonFormField(
                    value: selectedStates,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(8),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    icon: Icon(
                      Icons.arrow_drop_down_rounded,
                      color: Colors.green[900],
                    ),
                    items: states.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedStates = newValue!;
                      });
                    },
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * .05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Choose District',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: DropdownButtonFormField(
                    value: selectedDistricts,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(8),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    icon: Icon(
                      Icons.arrow_drop_down_rounded,
                      color: Colors.green[900],
                    ),
                    items: districts.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedDistricts = newValue!;
                      });
                    },
                  ),
                )
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                state = selectedStates;
                district = selectedDistricts;
                isSwitched = true;
              });
              print(state);
              print(district);
            },
            child: const Text('Show Storages'),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Container(
            // padding: EdgeInsets.all(16.0),
            // decoration: BoxDecoration(
            //   border: Border.all(
            //     color: Colors.black,
            //     width: 2.0,
            //   ),
            // ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columns: const <DataColumn>[
                  DataColumn(
                    label: Expanded(
                      child: Text(
                        'Name',
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Expanded(
                      child: Text(
                        'Location',
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Expanded(
                      child: Text(
                        'Capacity',
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ),
                ],
                rows: const <DataRow>[
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text(
                        'Punjab Warehouse',
                      )),
                      DataCell(Text('Verka')),
                      DataCell(Text('32850 MT')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Marwaha')),
                      DataCell(Text('Focal Point Plot 374')),
                      DataCell(Text('2150 MT')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Ms A K')),
                      DataCell(Text('Village Ibban Kalan ')),
                      DataCell(Text('2240 MT')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Ms Heir')),
                      DataCell(Text('Village Rakh  ')),
                      DataCell(Text('3472 MT')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Joshan Agro Food')),
                      DataCell(Text('Akal Gadha')),
                      DataCell(Text('5777 MT')),
                    ],
                  ),
                ],
                columnSpacing: 20,
                headingRowHeight: 40.0,
                dataRowHeight: 50.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
