import 'package:flutter/material.dart';
import 'package:mygrowthapp/screen/CheckInScreen.dart';
import 'package:percent_indicator/percent_indicator.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
       home: MyHomePage(),

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  List<int> list=[];
  //Custom Widget for check in button
  Widget CustomCheckInbtn(){
    return  Padding(
      padding: const EdgeInsets.only(left: 20,right: 20,bottom: 10,top: 10),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 50,
        child: ElevatedButton(
          onPressed: () {

            Navigator.push(context, MaterialPageRoute(builder: (context)=> CheckInScreen() ));
          },
          style: ButtonStyle(
            backgroundColor:MaterialStateProperty.all(Colors.black),
          ),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:const [
              Text("Check in"),
              Icon(Icons.arrow_forward),
            ],
          ),
        ),
      ),
    );
  }






  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(list);
    _controller = TabController(length: 3, vsync: this);
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
        color: Colors.deepPurpleAccent,
        child: Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Stack(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20, right: 10),
                child:Text("My Growth",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30
                  ),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                      color: const Color(0xffD0CECE).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: TabBar(
                    controller: _controller,
                    indicator: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10)),
                    labelColor: Color(0xffffffff),
                    unselectedLabelColor: Colors.black,
                    tabs: const [
                      Tab(
                          child: Text(
                        "Feeling",
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w700,
                        ),
                      )),
                      Tab(
                          child: Text(
                        'Being',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w700,
                        ),
                      )),
                      Tab(
                          child: Text(
                        'Acted',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w700,
                        ),
                      )),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, top: 80),
                child: TabBarView(
                  controller: _controller,
                  children: [
                       SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.green,
                                style: BorderStyle.solid,
                                width: 3.0,
                              ),
                              color: Colors.white70.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Column(
                              children:  [
                                CustomWidget(
                                    emojiUniCode:   "\u{1F92A}",
                                    title: "Joyfully",
                                    clr:Colors.green ),
                                CustomWidget(
                                    emojiUniCode:   "\u{1F607}",
                                    title: "Proud",
                                    clr:Colors.orange ),
                                CustomWidget(
                                    emojiUniCode:   "\u{1F642}",
                                    title: "Curious",
                                    clr:Colors.red ),
                                CustomWidget(
                                    emojiUniCode:   "\u{1F60D}",
                                    title: "Loved",
                                    clr:Colors.teal ),
                                CustomWidget(
                                    emojiUniCode:   "\u{1F917}",
                                    title: "Secure",
                                    clr:Colors.yellow ),
                                CustomWidget(
                                    emojiUniCode:   "\u{1F610}",
                                    title: "Calm",
                                    clr:Colors.brown ),
                               // CustomCheckInbtn(),


                              ],
                            ),
                          ),
                        )
                      ),
                    SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.green,
                                style: BorderStyle.solid,
                                width: 3.0,
                              ),
                              color: Colors.white70.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child:  Column(
                              children:  [
                                CustomWidget(
                                    emojiUniCode:   "\u{1F468}",
                                    title: "Generous",
                                    clr:Colors.amberAccent),
                                CustomWidget(
                                    emojiUniCode:   "\u{1F4B5}",
                                    title: "Expanding",
                                    clr:Colors.red ),
                                CustomWidget(
                                    emojiUniCode:   "\u{1F557}",
                                    title: "Commitment",
                                    clr:Colors.indigo),
                                CustomWidget(
                                    emojiUniCode:   "\u{1F57A}",
                                    title: "Intentional",
                                    clr:Colors.lightGreen),
                                CustomWidget(
                                    emojiUniCode:   "\u{1F46B}",
                                    title: "Connected",
                                    clr:Colors.blue ),
                                CustomWidget(
                                    emojiUniCode:   "\u{2764}",
                                    title: "Accepting",
                                    clr:Colors.greenAccent ),
                               // CustomCheckInbtn(),


                              ],
                            ),
                          ),
                        )
                    ),

                    SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.green,
                                style: BorderStyle.solid,
                                width: 3.0,
                              ),
                              color: Colors.white70.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child:  Column(
                              children:  [
                                CustomWidget(
                                    emojiUniCode:   "\u{1F935}",
                                    title: "Courageous",
                                    clr:Colors.black54),
                                CustomWidget(
                                    emojiUniCode:   "\u{1F647}",
                                    title: "Delicious",
                                    clr:Colors.cyan ),
                                CustomWidget(
                                    emojiUniCode:   "\u{1F468}",
                                    title: "Responsible",
                                    clr:Colors.orangeAccent),
                                CustomWidget(
                                    emojiUniCode:   "\u{1F3CB}",
                                    title: "Rigorous",
                                    clr:Colors.pinkAccent),
                                CustomWidget(
                                    emojiUniCode:   "\u{1F6B4}",
                                    title: "Urgent",
                                    clr:Colors.purple ),
                                CustomWidget(
                                    emojiUniCode:   "\u{1F574}",
                                    title: "Genuine",
                                    clr:Colors.limeAccent ),



                              ],
                            ),
                          ),
                        )
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomWidget extends StatefulWidget {
  String title;
  final Color clr;
  String emojiUniCode;

   CustomWidget({
     required this.emojiUniCode,
     required this.title,
     required this.clr,

   });


  @override
  _CustomWidgetState createState() => _CustomWidgetState();
}

class _CustomWidgetState extends State<CustomWidget> {

  int rangeValue =0;

  //Custom widget text for range

  Widget CustomText(var val) {
    //print(rangeList);
    return GestureDetector(
        child: Text("$val",
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        onTap: (){

         rangeValue = val;
          setState(() {

            Navigator.pop(context);
          });
          //print(rangeValue);
        }
    );

  }

  //Show dialog box for range number
  void _showRatingAppDialog() {
    final AlertDialog alert = AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      content: SizedBox(
        height: 20,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const  Text(
                "Range :",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              const SizedBox(width: 3),
              CustomText(0),
              const SizedBox(width: 3),
              CustomText(1),
              const SizedBox(width: 3),
              CustomText(2),
              const SizedBox(width: 3),
              CustomText(3),
              const SizedBox(width: 3),
              CustomText(4),
              const SizedBox(width: 3),
              CustomText(5),
              const SizedBox(width: 3),
              CustomText(6),
              const SizedBox(width: 3),
              CustomText(7),
              const SizedBox(width: 3),
              CustomText(8),
              const SizedBox(width: 3),
              CustomText(9),
              const SizedBox(width: 3),
              CustomText(10),

            ],
          ),
        ),
      ),
      actionsAlignment: MainAxisAlignment.start,
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }






  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
          side:const BorderSide(
            color: Colors.red,
            width: 1.0,
          ),//<-- SEE HERE
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          height: 50,
          child: Stack(
            children: [
              LinearPercentIndicator(
                //width: MediaQuery.of(context).size.width,
                //animation: true,
                lineHeight: 1000,
                percent: rangeValue * 0.1,
                linearStrokeCap: LinearStrokeCap.roundAll,
                progressColor: Colors.deepPurpleAccent,
                backgroundColor: Colors.grey.withOpacity(0.3),
                barRadius: const Radius.circular(20),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: () {
                      _showRatingAppDialog();

                      //print("sjhdjskd");
                    },
                    child: Text(
                      widget.emojiUniCode,
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(left: 50, right: 15),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    widget.title,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: CircularPercentIndicator(
                    radius: 15.0,
                    lineWidth: 3.0,
                    percent: rangeValue * 0.1,
                    center: Text("$rangeValue"),
                    progressColor: widget.clr,
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


// class Data {
//  final List<int> _list = [1,2,3];
//
//   void DataItem(){
//     for(var i in _list){
//       print(_list[i]);
//
//     }
//   }
//
// }