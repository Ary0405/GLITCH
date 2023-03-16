import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class GraphScreen extends StatefulWidget {
  const GraphScreen({super.key});
  static const routeName = 'graphs_screen';

  @override
  State<GraphScreen> createState() => _GraphScreenState();
}

class PriceData {
  PriceData(this.legend, this.price);
  final String legend;
  final double price;
}

class _GraphScreenState extends State<GraphScreen> {
  @override
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
  String radius_dd = "";
  String time_dd = "";
  bool isSwitched = false;
  List<String> radius = [
    '1km',
    '5km',
    '10km',
    '15km',
    '20km',
  ];
  List<String> time_duration = [
    '1 day',
    '1 week',
    '1 month',
  ];
  List<PriceData> twenty_km_oneday = [
    PriceData('Dadri', 35),
    PriceData('Indirapuram', 28),
    PriceData('Sector 51', 39),
    PriceData('Sector 52', 32),
    PriceData('Pari Chowk', 27),
    PriceData('India Gate', 40),
    PriceData('Delhi Haat', 34),
    PriceData('Sarojini Nagar', 50)
  ];
  List<PriceData> fifteen_km_oneday = [
    PriceData('Dadri', 35),
    PriceData('Indirapuram', 28),
    PriceData('Sector 51', 39),
    PriceData('Sector 52', 32),
    PriceData('Pari Chowk', 27),
    PriceData('India Gate', 40),
  ];
  List<PriceData> ten_km_oneday = [
    PriceData('Dadri', 35),
    PriceData('Indirapuram', 28),
    PriceData('Sector 51', 39),
    PriceData('Sector 52', 32),
    PriceData('Pari Chowk', 27),
  ];
  List<PriceData> five_km_oneday = [
    PriceData('Dadri', 35),
    PriceData('Indirapuram', 28),
    PriceData('Sector 51', 39),
  ];
  List<PriceData> one_km_oneday = [
    PriceData('Dadri', 35),
    PriceData('Indirapuram', 28),
  ];

  List<PriceData> twenty_km_onemonth = [
    PriceData('Dadri', 32),
    PriceData('Indirapuram', 25),
    PriceData('Sector 51', 46),
    PriceData('Sector 52', 33),
    PriceData('Pari Chowk', 24),
    PriceData('India Gate', 35),
    PriceData('Delhi Haat', 31),
    PriceData('Sarojini Nagar', 45)
  ];
  List<PriceData> fifteen_km_onemonth = [
    PriceData('Dadri', 32),
    PriceData('Indirapuram', 25),
    PriceData('Sector 51', 46),
    PriceData('Sector 52', 33),
    PriceData('Pari Chowk', 24),
    PriceData('India Gate', 35),
  ];
  List<PriceData> ten_km_onemonth = [
    PriceData('Dadri', 32),
    PriceData('Indirapuram', 25),
    PriceData('Sector 51', 46),
    PriceData('Sector 52', 33),
    PriceData('Pari Chowk', 24),
  ];
  List<PriceData> five_km_onemonth = [
    PriceData('Dadri', 32),
    PriceData('Indirapuram', 25),
    PriceData('Sector 51', 46),
  ];
  List<PriceData> one_km_onemonth = [
    PriceData('Dadri', 32),
    PriceData('Indirapuram', 25),
  ];

  List<PriceData> twenty_km_oneyear = [
    PriceData('Dadri', 30),
    PriceData('Indirapuram', 20),
    PriceData('Sector 51', 45),
    PriceData('Sector 52', 38),
    PriceData('Pari Chowk', 20),
    PriceData('India Gate', 31),
    PriceData('Delhi Haat', 35),
    PriceData('Sarojini Nagar', 40)
  ];
  List<PriceData> fifteen_km_oneyear = [
    PriceData('Dadri', 30),
    PriceData('Indirapuram', 20),
    PriceData('Sector 51', 45),
    PriceData('Sector 52', 38),
    PriceData('Pari Chowk', 20),
    PriceData('India Gate', 31),
  ];
  List<PriceData> ten_km_oneyear = [
    PriceData('Dadri', 30),
    PriceData('Indirapuram', 20),
    PriceData('Sector 51', 45),
    PriceData('Sector 52', 38),
    PriceData('Pari Chowk', 20),
  ];
  List<PriceData> five_km_oneyear = [
    PriceData('Dadri', 30),
    PriceData('Indirapuram', 20),
    PriceData('Sector 51', 45),
  ];
  List<PriceData> one_km_oneyear = [
    PriceData('Dadri', 30),
    PriceData('Indirapuram', 20),
  ];
  List<PriceData> one_day = [
    PriceData('7am', 35),
    PriceData('8am', 28),
    PriceData('9am', 34),
    PriceData('10am', 32),
    PriceData('11am', 40),
    PriceData('12pm', 32),
    PriceData('1pm', 35),
    PriceData('2pm', 28),
  ];

  List<String> locations = [
    'Dadri',
    'Indirapuram',
    'Sector 51',
  ];

  List<PriceData> dadri_oneday = [
    PriceData('7am', 35),
    PriceData('8am', 28),
    PriceData('9am', 34),
    PriceData('10am', 32),
    PriceData('11am', 40),
    PriceData('12pm', 32),
    PriceData('1pm', 35),
    PriceData('2pm', 28),
  ];
  List<PriceData> indirapuram_oneday = [
    PriceData('7am', 30),
    PriceData('8am', 23),
    PriceData('9am', 35),
    PriceData('10am', 28),
    PriceData('11am', 36),
    PriceData('12pm', 30),
    PriceData('1pm', 30),
    PriceData('2pm', 22),
  ];
  List<PriceData> sector51_oneday = [
    PriceData('7am', 40),
    PriceData('8am', 28),
    PriceData('9am', 35),
    PriceData('10am', 30),
    PriceData('11am', 35),
    PriceData('12pm', 32),
    PriceData('1pm', 40),
    PriceData('2pm', 30),
  ];

  List<PriceData> dadri_oneweek = [
    PriceData('Monday', 35),
    PriceData('Tuesday', 28),
    PriceData('Wednesday', 34),
    PriceData('Thursday', 32),
    PriceData('Friday', 40),
    PriceData('Saturday', 32),
    PriceData('Sunday', 35),
  ];
  List<PriceData> indirapuram_oneweek = [
    PriceData('Monday', 30),
    PriceData('Tuesday', 23),
    PriceData('Wednesday', 35),
    PriceData('Thursday', 28),
    PriceData('Friday', 36),
    PriceData('Saturday', 30),
    PriceData('Sunday', 30),
  ];
  List<PriceData> sector51_oneweek = [
    PriceData('Monday', 40),
    PriceData('Tuesday', 28),
    PriceData('Wednesday', 35),
    PriceData('Thursday', 30),
    PriceData('Friday', 35),
    PriceData('Saturday', 32),
    PriceData('Sunday', 40),
  ];
  List<PriceData> dadri_onemonth = [
    PriceData('Jan', 35),
    PriceData('Feb', 28),
    PriceData('Mar', 34),
    PriceData('Apr', 32),
    PriceData('May', 40),
    PriceData('Jun', 32),
    PriceData('Jul', 35),
    PriceData('Aug', 28),
    PriceData('Sep', 34),
    PriceData('Oct', 32),
    PriceData('Nov', 40),
    PriceData('Dec', 32),
  ];
  List<PriceData> indirapuram_onemonth = [
    PriceData('Jan', 30),
    PriceData('Feb', 23),
    PriceData('Mar', 35),
    PriceData('Apr', 28),
    PriceData('May', 36),
    PriceData('Jun', 30),
    PriceData('Jul', 30),
    PriceData('Aug', 23),
    PriceData('Sep', 35),
    PriceData('Oct', 28),
    PriceData('Nov', 36),
    PriceData('Dec', 30),
  ];
  List<PriceData> sector51_onemonth = [
    PriceData('Jan', 40),
    PriceData('Feb', 28),
    PriceData('Mar', 35),
    PriceData('Apr', 30),
    PriceData('May', 35),
    PriceData('Jun', 32),
    PriceData('Jul', 40),
    PriceData('Aug', 28),
    PriceData('Sep', 35),
    PriceData('Oct', 30),
    PriceData('Nov', 35),
    PriceData('Dec', 32),
  ];
  String dropdownvalue = '1km';
  String dropdownvalue1 = '1 day';
  String dropdownvalue2 = 'Dadri';
  bool isSwitched2 = false;
  String location_dd = 'Dadri';
  final TooltipBehavior _tooltip = TooltipBehavior(enable: true);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xffF2F9F2),
        appBar: AppBar(
          title: const Text('Things you are selling'),
          bottom: const TabBar(
            tabs: [
              Padding(
                padding: EdgeInsets.only(
                  bottom: 5,
                ),
                child: Text(
                  'Duration Based',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: 5,
                ),
                child: Text(
                  'Location Based',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
            indicatorColor: Colors.white,
            indicatorWeight: 3,
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              children: [
                Padding(
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width * .05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Choose Radius',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .3,
                        child: DropdownButtonFormField(
                          value: dropdownvalue,
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(8),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                          icon: Icon(
                            Icons.arrow_drop_down_rounded,
                            color: Colors.green[900],
                          ),
                          items: radius.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width * .05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Choose Time Duration',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .3,
                        child: DropdownButtonFormField(
                          value: dropdownvalue1,
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(8),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                          icon: Icon(
                            Icons.arrow_drop_down_rounded,
                            color: Colors.green[900],
                          ),
                          items: time_duration.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue1 = newValue!;
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
                      radius_dd = dropdownvalue;
                      time_dd = dropdownvalue1;
                      isSwitched = true;
                    });
                    print(radius_dd);
                    print(time_dd);
                  },
                  child: const Text('Show Graph'),
                ),
                if (isSwitched) ...[
                  if (radius_dd == '1km' && time_dd == '1 day') ...[
                    SfCartesianChart(
                      primaryXAxis: CategoryAxis(),
                      title: ChartTitle(text: 'Price vs Time'),
                      tooltipBehavior: _tooltip,
                      series: <ChartSeries>[
                        LineSeries<PriceData, String>(
                          dataSource: one_km_oneday,
                          xValueMapper: (PriceData sales, _) => sales.legend,
                          yValueMapper: (PriceData sales, _) => sales.price,
                          dataLabelSettings: DataLabelSettings(isVisible: true),
                        )
                      ],
                    ),
                  ] else if (radius_dd == '1km' && time_dd == '1 week') ...[
                    SfCartesianChart(
                      primaryXAxis: CategoryAxis(),
                      title: ChartTitle(text: 'Price vs Time'),
                      tooltipBehavior: _tooltip,
                      series: <ChartSeries>[
                        LineSeries<PriceData, String>(
                          dataSource: one_km_onemonth,
                          xValueMapper: (PriceData sales, _) => sales.legend,
                          yValueMapper: (PriceData sales, _) => sales.price,
                          dataLabelSettings: DataLabelSettings(isVisible: true),
                        )
                      ],
                    ),
                  ] else if (radius_dd == '1km' && time_dd == '1 month') ...[
                    SfCartesianChart(
                      primaryXAxis: CategoryAxis(),
                      title: ChartTitle(text: 'Price vs Time'),
                      tooltipBehavior: _tooltip,
                      series: <ChartSeries>[
                        LineSeries<PriceData, String>(
                          dataSource: one_km_oneyear,
                          xValueMapper: (PriceData sales, _) => sales.legend,
                          yValueMapper: (PriceData sales, _) => sales.price,
                          dataLabelSettings: DataLabelSettings(isVisible: true),
                        )
                      ],
                    ),
                  ] else if (radius_dd == '5km' && time_dd == '1 day') ...[
                    SfCartesianChart(
                      primaryXAxis: CategoryAxis(),
                      title: ChartTitle(text: 'Price vs Time'),
                      tooltipBehavior: _tooltip,
                      series: <ChartSeries>[
                        LineSeries<PriceData, String>(
                          dataSource: five_km_oneday,
                          xValueMapper: (PriceData sales, _) => sales.legend,
                          yValueMapper: (PriceData sales, _) => sales.price,
                          dataLabelSettings: DataLabelSettings(isVisible: true),
                        )
                      ],
                    ),
                  ] else if (radius_dd == '5km' && time_dd == '1 week') ...[
                    SfCartesianChart(
                      primaryXAxis: CategoryAxis(),
                      title: ChartTitle(text: 'Price vs Time'),
                      tooltipBehavior: _tooltip,
                      series: <ChartSeries>[
                        LineSeries<PriceData, String>(
                          dataSource: five_km_onemonth,
                          xValueMapper: (PriceData sales, _) => sales.legend,
                          yValueMapper: (PriceData sales, _) => sales.price,
                          dataLabelSettings: DataLabelSettings(isVisible: true),
                        )
                      ],
                    ),
                  ] else if (radius_dd == '5km' && time_dd == '1 month') ...[
                    SfCartesianChart(
                      primaryXAxis: CategoryAxis(),
                      title: ChartTitle(text: 'Price vs Time'),
                      tooltipBehavior: _tooltip,
                      series: <ChartSeries>[
                        LineSeries<PriceData, String>(
                          dataSource: five_km_oneyear,
                          xValueMapper: (PriceData sales, _) => sales.legend,
                          yValueMapper: (PriceData sales, _) => sales.price,
                          dataLabelSettings: DataLabelSettings(isVisible: true),
                        )
                      ],
                    ),
                  ] else if (radius_dd == '10km' && time_dd == '1 day') ...[
                    SfCartesianChart(
                      primaryXAxis: CategoryAxis(),
                      title: ChartTitle(text: 'Price vs Time'),
                      tooltipBehavior: _tooltip,
                      series: <ChartSeries>[
                        LineSeries<PriceData, String>(
                          dataSource: ten_km_oneday,
                          xValueMapper: (PriceData sales, _) => sales.legend,
                          yValueMapper: (PriceData sales, _) => sales.price,
                          dataLabelSettings: DataLabelSettings(isVisible: true),
                        )
                      ],
                    ),
                  ] else if (radius_dd == '10km' && time_dd == '1 week') ...[
                    SfCartesianChart(
                      primaryXAxis: CategoryAxis(),
                      title: ChartTitle(text: 'Price vs Time'),
                      tooltipBehavior: _tooltip,
                      series: <ChartSeries>[
                        LineSeries<PriceData, String>(
                          dataSource: ten_km_onemonth,
                          xValueMapper: (PriceData sales, _) => sales.legend,
                          yValueMapper: (PriceData sales, _) => sales.price,
                          dataLabelSettings: DataLabelSettings(isVisible: true),
                        )
                      ],
                    ),
                  ] else if (radius_dd == '10km' && time_dd == '1 month') ...[
                    SfCartesianChart(
                      primaryXAxis: CategoryAxis(),
                      title: ChartTitle(text: 'Price vs Time'),
                      tooltipBehavior: _tooltip,
                      series: <ChartSeries>[
                        LineSeries<PriceData, String>(
                          dataSource: ten_km_oneyear,
                          xValueMapper: (PriceData sales, _) => sales.legend,
                          yValueMapper: (PriceData sales, _) => sales.price,
                          dataLabelSettings: DataLabelSettings(isVisible: true),
                        )
                      ],
                    ),
                  ] else if (radius_dd == '15km' && time_dd == '1 day') ...[
                    SfCartesianChart(
                      primaryXAxis: CategoryAxis(),
                      title: ChartTitle(text: 'Price vs Time'),
                      tooltipBehavior: _tooltip,
                      series: <ChartSeries>[
                        LineSeries<PriceData, String>(
                          dataSource: fifteen_km_oneday,
                          xValueMapper: (PriceData sales, _) => sales.legend,
                          yValueMapper: (PriceData sales, _) => sales.price,
                          dataLabelSettings: DataLabelSettings(isVisible: true),
                        )
                      ],
                    ),
                  ] else if (radius_dd == '15km' && time_dd == '1 week') ...[
                    SfCartesianChart(
                      primaryXAxis: CategoryAxis(),
                      title: ChartTitle(text: 'Price vs Time'),
                      tooltipBehavior: _tooltip,
                      series: <ChartSeries>[
                        LineSeries<PriceData, String>(
                          dataSource: fifteen_km_onemonth,
                          xValueMapper: (PriceData sales, _) => sales.legend,
                          yValueMapper: (PriceData sales, _) => sales.price,
                          dataLabelSettings: DataLabelSettings(isVisible: true),
                        )
                      ],
                    ),
                  ] else if (radius_dd == '15km' && time_dd == '1 month') ...[
                    SfCartesianChart(
                      primaryXAxis: CategoryAxis(),
                      title: ChartTitle(text: 'Price vs Time'),
                      tooltipBehavior: _tooltip,
                      series: <ChartSeries>[
                        LineSeries<PriceData, String>(
                          dataSource: fifteen_km_oneyear,
                          xValueMapper: (PriceData sales, _) => sales.legend,
                          yValueMapper: (PriceData sales, _) => sales.price,
                          dataLabelSettings: DataLabelSettings(isVisible: true),
                        )
                      ],
                    ),
                  ] else if (radius_dd == '20km' && time_dd == '1 day') ...[
                    SfCartesianChart(
                      primaryXAxis: CategoryAxis(),
                      title: ChartTitle(text: 'Price vs Time'),
                      tooltipBehavior: _tooltip,
                      series: <ChartSeries>[
                        LineSeries<PriceData, String>(
                          dataSource: twenty_km_oneday,
                          xValueMapper: (PriceData sales, _) => sales.legend,
                          yValueMapper: (PriceData sales, _) => sales.price,
                          dataLabelSettings: DataLabelSettings(isVisible: true),
                        )
                      ],
                    ),
                  ] else if (radius_dd == '20km' && time_dd == '1 week') ...[
                    SfCartesianChart(
                      primaryXAxis: CategoryAxis(),
                      title: ChartTitle(text: 'Price vs Time'),
                      tooltipBehavior: _tooltip,
                      series: <ChartSeries>[
                        LineSeries<PriceData, String>(
                          dataSource: twenty_km_onemonth,
                          xValueMapper: (PriceData sales, _) => sales.legend,
                          yValueMapper: (PriceData sales, _) => sales.price,
                          dataLabelSettings: DataLabelSettings(isVisible: true),
                        )
                      ],
                    ),
                  ] else if (radius_dd == '20km' && time_dd == '1 month') ...[
                    SfCartesianChart(
                      primaryXAxis: CategoryAxis(),
                      title: ChartTitle(text: 'Price vs Time'),
                      tooltipBehavior: _tooltip,
                      series: <ChartSeries>[
                        LineSeries<PriceData, String>(
                          dataSource: twenty_km_oneyear,
                          xValueMapper: (PriceData sales, _) => sales.legend,
                          yValueMapper: (PriceData sales, _) => sales.price,
                          dataLabelSettings: DataLabelSettings(isVisible: true),
                        )
                      ],
                    ),
                  ]
                ]
              ],
            ),
            Column(
              children: [
                Padding(
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width * .05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Choose Radius',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .3,
                        child: DropdownButtonFormField(
                          value: dropdownvalue,
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(8),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                          icon: Icon(
                            Icons.arrow_drop_down_rounded,
                            color: Colors.green[900],
                          ),
                          items: radius.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width * .05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Choose Location',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .5,
                        child: DropdownButtonFormField(
                          value: dropdownvalue2,
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(8),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                          icon: Icon(
                            Icons.arrow_drop_down_rounded,
                            color: Colors.green[900],
                          ),
                          items: locations.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue2 = newValue!;
                            });
                          },
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width * .05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Choose Time Duration',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .3,
                        child: DropdownButtonFormField(
                          value: dropdownvalue1,
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(8),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                          icon: Icon(
                            Icons.arrow_drop_down_rounded,
                            color: Colors.green[900],
                          ),
                          items: time_duration.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue1 = newValue!;
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
                      radius_dd = dropdownvalue;
                      time_dd = dropdownvalue1;
                      location_dd = dropdownvalue2;
                      isSwitched2 = true;
                    });
                    print(radius_dd);
                    print(time_dd);
                  },
                  child: const Text('Show Graph'),
                ),
                if (isSwitched2) ...[
                  if (location_dd == 'Dadri' && time_dd == '1 day') ...[
                    SfCartesianChart(
                      primaryXAxis: CategoryAxis(),
                      title: ChartTitle(text: 'Price vs Time'),
                      tooltipBehavior: _tooltip,
                      series: <ChartSeries>[
                        LineSeries<PriceData, String>(
                          dataSource: dadri_oneday,
                          xValueMapper: (PriceData sales, _) => sales.legend,
                          yValueMapper: (PriceData sales, _) => sales.price,
                          dataLabelSettings: DataLabelSettings(isVisible: true),
                        )
                      ],
                    ),
                  ] else if (location_dd == 'Dadri' && time_dd == '1 week') ...[
                    SfCartesianChart(
                      primaryXAxis: CategoryAxis(),
                      title: ChartTitle(text: 'Price vs Time'),
                      tooltipBehavior: _tooltip,
                      series: <ChartSeries>[
                        LineSeries<PriceData, String>(
                          dataSource: dadri_oneweek,
                          xValueMapper: (PriceData sales, _) => sales.legend,
                          yValueMapper: (PriceData sales, _) => sales.price,
                          dataLabelSettings: DataLabelSettings(isVisible: true),
                        )
                      ],
                    ),
                  ] else if (location_dd == 'Dadri' && time_dd == '1 month') ...[
                    SfCartesianChart(
                      primaryXAxis: CategoryAxis(),
                      title: ChartTitle(text: 'Price vs Time'),
                      tooltipBehavior: _tooltip,
                      series: <ChartSeries>[
                        LineSeries<PriceData, String>(
                          dataSource: dadri_onemonth,
                          xValueMapper: (PriceData sales, _) => sales.legend,
                          yValueMapper: (PriceData sales, _) => sales.price,
                          dataLabelSettings: DataLabelSettings(isVisible: true),
                        )
                      ],
                    ),
                  ] else if (location_dd == 'Indirapuram' && time_dd == '1 day') ...[
                    SfCartesianChart(
                      primaryXAxis: CategoryAxis(),
                      title: ChartTitle(text: 'Price vs Time'),
                      tooltipBehavior: _tooltip,
                      series: <ChartSeries>[
                        LineSeries<PriceData, String>(
                          dataSource: indirapuram_oneday,
                          xValueMapper: (PriceData sales, _) => sales.legend,
                          yValueMapper: (PriceData sales, _) => sales.price,
                          dataLabelSettings: DataLabelSettings(isVisible: true),
                        )
                      ],
                    ),
                  ] else if (location_dd == 'Indirapuram' && time_dd == '1 week') ...[
                    SfCartesianChart(
                      primaryXAxis: CategoryAxis(),
                      title: ChartTitle(text: 'Price vs Time'),
                      tooltipBehavior: _tooltip,
                      series: <ChartSeries>[
                        LineSeries<PriceData, String>(
                          dataSource: indirapuram_oneweek,
                          xValueMapper: (PriceData sales, _) => sales.legend,
                          yValueMapper: (PriceData sales, _) => sales.price,
                          dataLabelSettings: DataLabelSettings(isVisible: true),
                        )
                      ],
                    ),
                  ] else if (location_dd == 'Indirapuram' && time_dd == '1 month') ...[
                    SfCartesianChart(
                      primaryXAxis: CategoryAxis(),
                      title: ChartTitle(text: 'Price vs Time'),
                      tooltipBehavior: _tooltip,
                      series: <ChartSeries>[
                        LineSeries<PriceData, String>(
                          dataSource: indirapuram_onemonth,
                          xValueMapper: (PriceData sales, _) => sales.legend,
                          yValueMapper: (PriceData sales, _) => sales.price,
                          dataLabelSettings: DataLabelSettings(isVisible: true),
                        )
                      ],
                    ),
                  ] else if (location_dd == 'Sector 51' && time_dd == '1 day') ...[
                    SfCartesianChart(
                      primaryXAxis: CategoryAxis(),
                      title: ChartTitle(text: 'Price vs Time'),
                      tooltipBehavior: _tooltip,
                      series: <ChartSeries>[
                        LineSeries<PriceData, String>(
                          dataSource: sector51_oneday,
                          xValueMapper: (PriceData sales, _) => sales.legend,
                          yValueMapper: (PriceData sales, _) => sales.price,
                          dataLabelSettings: DataLabelSettings(isVisible: true),
                        )
                      ],
                    ),
                  ] else if (location_dd == 'Sector 51' && time_dd == '1 week') ...[
                    SfCartesianChart(
                      primaryXAxis: CategoryAxis(),
                      title: ChartTitle(text: 'Price vs Time'),
                      tooltipBehavior: _tooltip,
                      series: <ChartSeries>[
                        LineSeries<PriceData, String>(
                          dataSource: sector51_oneweek,
                          xValueMapper: (PriceData sales, _) => sales.legend,
                          yValueMapper: (PriceData sales, _) => sales.price,
                          dataLabelSettings: DataLabelSettings(isVisible: true),
                        )
                      ],
                    ),
                  ] else if (location_dd == 'Sector 51' &&
                    time_dd == '1 month') ...[
                  SfCartesianChart(
                    primaryXAxis: CategoryAxis(),
                    title: ChartTitle(text: 'Price vs Time'),
                    tooltipBehavior: _tooltip,
                    series: <ChartSeries>[
                      LineSeries<PriceData, String>(
                        dataSource: sector51_oneweek,
                        xValueMapper: (PriceData sales, _) => sales.legend,
                        yValueMapper: (PriceData sales, _) => sales.price,
                        dataLabelSettings: DataLabelSettings(isVisible: true),
                      )
                    ],
                  ),
                ]
                ] 
              ],
            )
          ],
        ),
      ),
    );
  }
}
