import 'package:flutter/material.dart';
import 'package:flutter_tes_dhany/input_keluar.dart';
import 'package:flutter_tes_dhany/input_masuk.dart';
import 'package:flutter_tes_dhany/input_pindah.dart';
import 'package:flutter_tes_dhany/kurs.dart';
import 'package:flutter_tes_dhany/mutasi.dart';

void home() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dhany',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Dhany'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    _controller = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 0, right: 0, bottom: 0),
        height: 55,
        child: Container(
            margin: EdgeInsets.only(),
            decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.circular(0)),
            height: 55,
            child: ClipRRect(
                child: DefaultTabController(
              length: 4,
              child: Scaffold(
                backgroundColor: Colors.blue,
                appBar: PreferredSize(
                    preferredSize: Size.fromHeight(170),
                    child: AppBar(
                      backgroundColor: Colors.white,
                      title: Text('APP KEUANGAN',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              //letterSpacing: 1,
                              color: Colors.blue)),

                      centerTitle: true,

                      actions: [
                        IconButton(
                          icon: Icon(Icons.notifications),
                          color: Colors.blue,
                          onPressed: () {},
                        ),
                      ],
                      //backgroundColor: Colors.purple,
                      flexibleSpace: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(0),
                            border: Border.all(color: Colors.grey, width: 1)),
                        //height: 500,
                        //padding: const EdgeInsets.only(
                        //top: 700, bottom: 0, left: 10, right: 10),
                      ),
                      bottom: TabBar(
                        padding: EdgeInsets.only(
                            top: 0, bottom: 20, left: 0, right: 0),
                        //isScrollable: true,
                        indicatorColor: Colors.transparent,
                        indicatorWeight: 5,
                        labelColor: Colors.blue,
                        tabs: [
                          Tab(icon: Icon(Icons.home), text: 'Home'),
                          Tab(icon: Icon(Icons.trending_up), text: 'Transaksi'),
                          Tab(icon: Icon(Icons.newspaper), text: 'Laporan'),
                          Tab(icon: Icon(Icons.settings), text: 'Tools'),
                        ],
                      ),
                      elevation: 20,
                      titleSpacing: 20,
                    )),
                floatingActionButton: SizedBox.fromSize(
                    size: Size.square(60),
                    child: FloatingActionButton(
                        child: Icon(Icons.refresh, color: Colors.blue),
                        backgroundColor: Colors.white,
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)))

                        // child: Icon(Icons.refresh, color: Colors.blue),
                        )),
                floatingActionButtonLocation:
                    FloatingActionButtonLocation.miniCenterTop,
                body: TabBarView(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Outlet(),
                    buildPage('Transaksi Page'),
                    buildPage('Laporan Page'),
                    buildPage('Tools Page'),
                  ],
                ),
              ),
            ))));
  }

  Widget Outlet() {
    return Column(children: [
      Container(
          margin: EdgeInsets.only(left: 10, right: 10, top: 40),
          padding: EdgeInsets.only(bottom: 5, top: 8, left: 25, right: 10),
          height: 190,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: Colors.grey, width: 1)),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.only(right: 100),
                  child: Text("Nama Outlet",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          //letterSpacing: 1,
                          color: Colors.blue)),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(children: [
              Container(
                //padding: EdgeInsets.only(left: 0),
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("images/Icon Rupiah.png"),
                  //fit: BoxFit.cover,
                )),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "IDR  . . . . . . . . . . . . . . . . . . . . . . . . . . ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "500.000",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
            ]),
            SizedBox(
              height: 10,
            ),
            Row(children: [
              Container(
                //padding: EdgeInsets.only(left: 0),
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("images/Icon Dollar.png"),
                  //  fit: BoxFit.cover,
                )),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "USD  . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "0",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
            ]),
            SizedBox(
              height: 10,
            ),
            Row(children: [
              Container(
                //padding: EdgeInsets.only(left: 0),
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("images/Icon Euro.png"),
                  //fit: BoxFit.cover,
                )),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "EUR   . . . . . . . . . . . . . . . . . . . . . . . . . . ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "20.000",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
            ]),
            SizedBox(
              height: 10,
            ),
            Row(children: [
              Container(
                //padding: EdgeInsets.only(left: 0),
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("images/Icon Dollar Singapore.png"),
                  //fit: BoxFit.cover,
                )),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "SGD . . . . . . . . . . . . . . . . . . . . . . . . . . . . ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "6.000",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
            ]),
          ])),
      SizedBox(
        height: 10,
      ),
      Container(
          margin: EdgeInsets.only(left: 70, right: 10),
          padding: EdgeInsets.only(bottom: 5, top: 8, left: 15, right: 0),
          height: 190,
          decoration: BoxDecoration(
              color: Colors.blue.shade100,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: Colors.grey, width: 1)),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              SizedBox(
                width: 5,
              ),
              Container(
                  child: InkWell(
                      splashColor: Colors.black,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => InputMasuk()));
                      },
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Ink(
                          height: 35,
                          width: 65,
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image:
                                  AssetImage("images/Button Input Masuk.png"),
                              //fit: BoxFit.cover,
                            )),
                          ),
                        ),
                        Text(
                          'MASUK',
                          style: TextStyle(fontSize: 12, color: Colors.blue),
                        ),
                      ]))),
              Container(
                  child: InkWell(
                      splashColor: Colors.black,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => InputKeluar()));
                      },
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Ink(
                          height: 35,
                          width: 50,
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image:
                                  AssetImage("images/Button Input Keluar.png"),
                              //fit: BoxFit.cover,
                            )),
                          ),
                        ),
                        Text(
                          'KELUAR',
                          style: TextStyle(fontSize: 12, color: Colors.blue),
                        ),
                      ]))),
              Container(
                  child: InkWell(
                      splashColor: Colors.black,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => InputPindah()));
                      },
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Ink(
                          height: 35,
                          width: 60,
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image:
                                  AssetImage("images/Button Input Pindah.png"),
                              //fit: BoxFit.cover,
                            )),
                          ),
                        ),
                        Text(
                          'PINDAH',
                          style: TextStyle(fontSize: 12, color: Colors.blue),
                        ),
                      ]))),
              Container(
                  child: InkWell(
                      splashColor: Colors.black,
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Mutasi()));
                      },
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Ink(
                          height: 35,
                          width: 50,
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image:
                                  AssetImage("images/Button Input Mutasi.png"),
                              //fit: BoxFit.cover,
                            )),
                          ),
                        ),
                        Text(
                          'MUTASI',
                          style: TextStyle(fontSize: 12, color: Colors.blue),
                        ),
                      ]))),
              Container(
                  child: InkWell(
                      splashColor: Colors.black,
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Kurs()));
                      },
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Ink(
                          height: 35,
                          width: 50,
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage("images/Button Input Kurs.png"),
                              //fit: BoxFit.cover,
                            )),
                          ),
                        ),
                        Text(
                          'KURS',
                          style: TextStyle(fontSize: 12, color: Colors.blue),
                        ),
                      ]))),
            ]),
            SizedBox(
              height: 15,
            ),
            Container(
                margin: EdgeInsets.only(right: 15),
                padding: EdgeInsets.only(bottom: 5, top: 8, left: 15, right: 0),
                height: 105,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.grey, width: 1)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 0),
                            child: Text(
                                "Jumlah Barang   . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   16",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    //letterSpacing: 1,
                                    color: Colors.black)),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(children: [
                        Text(
                            "Total IDR  . . . . . . . . . . . . . . . . . . . . . . . . . . .  Rp 100.000.000 ",
                            style: TextStyle(
                                fontSize: 10,
                                //fontWeight: FontWeight.bold,
                                //letterSpacing: 1,
                                color: Colors.blue)),
                      ]),
                      SizedBox(
                        height: 5,
                      ),
                      Row(children: [
                        Text(
                            "Total USD  . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   \$ 2.000 ",
                            style: TextStyle(
                                fontSize: 10,
                                //fontWeight: FontWeight.bold,
                                //letterSpacing: 1,
                                color: Colors.blue)),
                      ]),
                      SizedBox(
                        height: 5,
                      ),
                      Row(children: [
                        Text(
                            "Total EUR  . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . € 200 ",
                            style: TextStyle(
                                fontSize: 10,
                                //fontWeight: FontWeight.bold,
                                //letterSpacing: 1,
                                color: Colors.blue)),
                      ]),
                      SizedBox(
                        height: 5,
                      ),
                      Row(children: [
                        Text(
                            "Total SGD  . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .  S\$ 1000 ",
                            style: TextStyle(
                                fontSize: 10,
                                //fontWeight: FontWeight.bold,
                                //letterSpacing: 1,
                                color: Colors.blue)),
                      ]),
                    ])),
          ]))
    ]);
  }

  Widget buildPage(String text) => Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 28, color: Colors.white),
        ),
      );
}
