
import "package:flutter/material.dart";
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class CheckInScreen extends StatefulWidget {
  const CheckInScreen({Key? key}) : super(key: key);

  @override
  _CheckInScreenState createState() => _CheckInScreenState();
}

class _CheckInScreenState extends State<CheckInScreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  Widget CustomHomebtn(){
    return  Padding(
      padding: const EdgeInsets.only(left: 20,right: 20,bottom: 50,top: 10),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 50,
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);

          },
          style: ButtonStyle(
            backgroundColor:MaterialStateProperty.all(Colors.black),
          ),

          child: const Text("Home",style: TextStyle(fontSize: 20),),
        ),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 4, vsync: this);
    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.white70,
        child: Stack(
          children:[
            Positioned(
              top: 45,
              left: 10,

              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: const Icon(
                      Icons.arrow_back,
                      size: 30,
                      color: Colors.black,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(width: 30),
                  const Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "Check In",
                      style: TextStyle(color: Colors.black, fontSize: 25),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 90,
              left:20,
              right: 20,
              child:   Container(
                //width: MediaQuery.of(context).size.width,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child:Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.transparent,
                      child: ClipOval(
                        child: Image.asset("images/PREMIUM.png",
                          fit: BoxFit.cover,
                          //width: 100,

                          height: 80,
                        ),
                      ),
                    ),
                    //const SizedBox(width: 20),
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            SizedBox(height:20),
                            Text("Premium make it easy!",
                              style:TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 18)),
                            SizedBox(height:10),
                            Text("Premium Membership haas what\nyou need to take your training."),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ),
            ),

            Positioned(
              top: 230,
              left: 20,
              right: 20,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 45,
                decoration: BoxDecoration(
                    color: const Color(0xffD0CECE).withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10.0)),
                child: TabBar(
                  controller: _controller,
                  indicator: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.circular(10)),
                  labelColor: Color(0xffffffff),
                  unselectedLabelColor: Colors.black,
                  tabs: const [
                    Tab(
                        child: Text(
                          "Day",
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                    Tab(
                        child: Text(
                          'Week',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                    Tab(
                        child: Text(
                          'Month',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                    Tab(
                        child: Text(
                          'Year',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                  ],
                ),
              ),
            ),
            Positioned(
              top:300,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                    color: Colors.deepPurpleAccent,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: TabBarView(
                  controller: _controller,
                  children: [
                    SingleChildScrollView(
                        child: Column(
                          children:  [
                            const SizedBox(height: 10),
                            CustomGraph(title: "Emotion", color: Colors.orange,),
                            CustomGraph(title: "Mindset", color: Colors.deepPurple),
                            CustomGraph(title: "Action", color: Colors.white70),
                            CustomMultiLineGraph(title: "Grand Total", color:Colors.orange),
                            CustomHomebtn(),

                            //Extra call this widget but not working
                            Container(),

                          ],
                        )),
                    SingleChildScrollView(
                        child: Column(
                          children: [
                            CustomGraph(title: "Emotion", color: Colors.orange,),
                            CustomGraph(title: "Mindset", color: Colors.deepPurple),
                            CustomGraph(title: "Action", color: Colors.white70),
                            CustomMultiLineGraph(title: "Grand Total", color:Colors.orange),
                            CustomHomebtn(),

                            //Extra call this widget but not working, ignore this widget
                            Container(),

                          ],
                        )),
                    SingleChildScrollView(
                        child: Column(
                          children:[
                            CustomGraph(title: "Emotion", color: Colors.orange,),
                            CustomGraph(title: "Mindset", color: Colors.deepPurple),
                            CustomGraph(title: "Action", color: Colors.white70),
                            CustomMultiLineGraph(title: "Grand Total", color:Colors.orange),
                            CustomHomebtn(),

                            //Extra call this widget but not working, ignore this widget
                            Container(),

                          ],
                        )),
                    SingleChildScrollView(
                        child: Column(
                          children:[
                            CustomGraph(title: "Emotion", color: Colors.orange,),
                            CustomGraph(title: "Mindset", color: Colors.deepPurple),
                            CustomGraph(title: "Action", color: Colors.white70),
                            CustomMultiLineGraph(title: "Grand Total", color:Colors.orange),
                            CustomHomebtn(),

                            //Extra call this widget but not working, ignore this widget
                           Container(),

                          ],
                        )),
                  ],
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}


class CustomGraph extends StatefulWidget {
  final String? title;
  final Color color;
   CustomGraph({
    required this.title,
     required this.color,

});

  @override
  _CustomGraphState createState() => _CustomGraphState();
}

class _CustomGraphState extends State<CustomGraph> {
  late TooltipBehavior _tooltipBehavior;

  void initState() {
    // TODO: implement initState
    super.initState();
    _tooltipBehavior = TooltipBehavior(enable: true);

  }
  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = <ChartData>[
      ChartData(x: 'Mon', y: 4),
      ChartData(x: 'Tue', y: 6),
      ChartData(x: 'Wed', y: 5),
      ChartData(x: 'Thu', y: 7),
      ChartData(x: 'Fri', y: 6.5),
      ChartData(x: 'Sat',y: 8),
      ChartData(x: 'Sun' ,y: 7),

    ];

    final List<Color> color = <Color>[];
    color.add(Colors.deepPurpleAccent);
    color.add(Colors.deepPurpleAccent);
    color.add(Colors.deepPurpleAccent);

    final List<double> stops = <double>[];
    stops.add(0.0);
    stops.add(0.5);
    stops.add(1.0);

    final LinearGradient gradientColors =
    LinearGradient(colors: color, stops: stops);


    return  Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [

          Align(
            alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text("${widget.title}",
                style: TextStyle(fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white),
                ),
              )),
          const SizedBox(height: 10),
          Container(
            height: 200,
              decoration: BoxDecoration(
                  color: widget.color,
                  borderRadius: BorderRadius.circular(10.0)),
              child: SfCartesianChart(
                  plotAreaBorderWidth: 3,
                  plotAreaBorderColor: Colors.black,
                  primaryXAxis: CategoryAxis(),
                  tooltipBehavior: _tooltipBehavior,

                  palette: const <Color>[
                    Colors.deepPurpleAccent,

                  ],

                  series: <ChartSeries<ChartData, String>>[
                    AreaSeries<ChartData, String>(
                      enableTooltip: true,
                      color: Colors.deepOrange.withOpacity(0.1),
                      borderGradient: gradientColors,
                      //borderColor: Colors.green,
                      borderWidth: 3,
                      // animationDuration: 4500,
                      // animationDelay: 2000,
                      dataSource: chartData,
                      xValueMapper: (ChartData data, _) => data.x,
                      yValueMapper: (ChartData data, _) => data.y,
                      yAxisName: 'yAxis1',
                      markerSettings:const  MarkerSettings(isVisible: true,
                      ),
                    )
                  ]
              )
          ),
        ],
      ),
    );
  }
}


class ChartData {
  ChartData({this.x, this.y});
  final String? x;
  final double? y;
}

class CustomMultiLineGraph extends StatefulWidget {
  final String? title;
  final Color color;
  CustomMultiLineGraph({
    required this.title,
    required this.color,

  });

  @override
  _CustomMultiLineGraphState createState() => _CustomMultiLineGraphState();
}

class _CustomMultiLineGraphState extends State<CustomMultiLineGraph> {
  late TooltipBehavior _tooltipBehavior;

  void initState() {
    // TODO: implement initState
    super.initState();
    _tooltipBehavior = TooltipBehavior(enable: true);

  }
  @override
  Widget build(BuildContext context) {
    final List<MultiLineChartData> multiLineChartData = <MultiLineChartData>[
      MultiLineChartData(x: 'Mon', y1: 4,y2: 2,y3:6),
      MultiLineChartData(x: 'Tue', y1: 6,y2: 2,y3: 4),
      MultiLineChartData(x: 'Wed', y1: 5,y2: 3.5,y3: 4),
      MultiLineChartData(x: 'Thu', y1: 7,y2: 4,y3: 5),
      MultiLineChartData(x: 'Fri', y1: 6.5,y2: 1,y3: 2),
      MultiLineChartData(x: 'Sat',y1: 8,y2: 7,y3: 6),
      MultiLineChartData(x: 'Sun' ,y1: 7,y2: 6.5,y3: 8),

    ];

    final List<Color> color = <Color>[];
    color.add(Colors.deepPurpleAccent);
    color.add(Colors.deepPurpleAccent);
    color.add(Colors.deepPurpleAccent);

    final List<double> stops = <double>[];
    stops.add(0.0);
    stops.add(0.5);
    stops.add(1.0);

    final LinearGradient gradientColors =
    LinearGradient(colors: color, stops: stops);


    return  Padding(
      padding: const EdgeInsets.only(left: 15,right: 15,top: 15,bottom: 10),
      child: Column(
        children: [

          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text("${widget.title}",
                  style: const TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              )),
          const SizedBox(height: 10),
          Container(
              height:330,
              decoration: BoxDecoration(
                  color: widget.color,
                  borderRadius: BorderRadius.circular(10.0)),
              child: Column(
                children: [
                  SfCartesianChart(
                      plotAreaBorderWidth: 3,
                      plotAreaBorderColor: Colors.black,
                      primaryXAxis: CategoryAxis(),
                      tooltipBehavior: _tooltipBehavior,

                      palette: const <Color>[
                        Colors.deepPurpleAccent,

                      ],

                      series: <ChartSeries<MultiLineChartData, String>>[
                        AreaSeries<MultiLineChartData, String>(
                          enableTooltip: true,
                          color: Colors.deepOrange.withOpacity(0.1),
                          borderGradient: gradientColors,
                          //borderColor: Colors.green,
                          borderWidth: 3,
                          // animationDuration: 4500,
                          // animationDelay: 2000,
                          dataSource: multiLineChartData,
                          xValueMapper: (MultiLineChartData data, _) => data.x,
                          yValueMapper: (MultiLineChartData data, _) => data.y1,
                          yAxisName: 'yAxis1',
                          markerSettings:const  MarkerSettings(isVisible: true,
                          ),
                        ),
                        AreaSeries<MultiLineChartData, String>(
                          enableTooltip: true,
                          color: Colors.deepOrange.withOpacity(0.1),
                          borderGradient: gradientColors,
                         // borderColor: Colors.yellowAccent,
                          borderWidth: 3,
                          // animationDuration: 4500,
                          // animationDelay: 2000,
                          dataSource: multiLineChartData,
                          xValueMapper: (MultiLineChartData data, _) => data.x,
                          yValueMapper: (MultiLineChartData data, _) => data.y2,
                          yAxisName: 'yAxis1',
                          markerSettings:const  MarkerSettings(isVisible: true,
                          ),
                        ),
                        AreaSeries<MultiLineChartData, String>(
                          enableTooltip: true,
                          color: Colors.deepOrange.withOpacity(0.1),
                          borderGradient: gradientColors,
                          //borderColor: Colors.green,
                          borderWidth: 3,
                          // animationDuration: 4500,
                          // animationDelay: 2000,
                          dataSource: multiLineChartData,
                          xValueMapper: (MultiLineChartData data, _) => data.x,
                          yValueMapper: (MultiLineChartData data, _) => data.y3,
                          yAxisName: 'yAxis1',
                          markerSettings:const  MarkerSettings(isVisible: true,
                          ),
                        )
                      ]
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40,right:20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 20,
                          width: 20,

                          decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              border: Border.all(
                                  color: Colors.black, // Set border color
                                  width: 1.0),   // Set border width
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(3.0)), // Set rounded corner radius
                            // Make rounded corner of border
                          ),
                        ),
                       const SizedBox(width: 5),
                        const Text("Energy"),
                        const SizedBox(width: 25),
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            border: Border.all(
                                color: Colors.black, // Set border color
                                width: 1.0),   // Set border width
                            borderRadius: const BorderRadius.all(
                                Radius.circular(3.0)), // Set rounded corner radius
                            // Make rounded corner of border
                          ),
                        ),
                       const SizedBox(width: 5),
                       const  Text("Mindset"),
                        const SizedBox(width: 25),
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(
                                color: Colors.black, // Set border color
                                width: 1.0),   // Set border width
                            borderRadius: const BorderRadius.all(
                                Radius.circular(3.0)), // Set rounded corner radius
                            // Make rounded corner of border
                          ),
                        ),
                       const SizedBox(width: 5),
                        Text("Action"),
                      ],
                    ),

                  )

                ],
              )
          ),
        ],
      ),
    );
  }
}


class MultiLineChartData {
  MultiLineChartData({this.x, this.y1, this.y2,this.y3});
  final String? x;
  final double? y1;
  final double? y2;
  final double? y3;
}


