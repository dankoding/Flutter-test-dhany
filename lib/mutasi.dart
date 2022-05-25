import 'package:flutter/material.dart';

class Mutasi extends StatefulWidget {
  @override
  _MutasiState createState() => _MutasiState();
}

class _MutasiState extends State<Mutasi> {
  final items = ['Nama Outlet', 'Nama Outlet', 'Nama Outlet', 'Nama Outlet'];
  String? value;

  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.blue,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(140),
          child: AppBar(
              backgroundColor: Colors.white,
              title: Text('Mutasi',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      //letterSpacing: 1,
                      color: Colors.blue)),
              centerTitle: true,
              elevation: 2.0,
              //centerTitle: false,
              leading: IconButton(
                padding: EdgeInsets.only(top: 5),
                icon: Icon(Icons.arrow_back_ios_new),
                color: Colors.blue,
                onPressed: () => Navigator.of(context).pop(),
              ),
              flexibleSpace: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(0),
                      border: Border.all(color: Colors.grey, width: 1)),
                  //height: 500,
                  //padding: const EdgeInsets.only(
                  //top: 700, bottom: 0, left: 10, right: 10),

                  height: 205,
                  padding: EdgeInsets.only(top: 95, left: 0, right: 0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                              SizedBox(
                                width: 5,
                              ),
                              Column(
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(bottom: 0),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(14),
                                        border: Border.all(
                                            color: Colors.blue.shade100,
                                            width: 1),
                                        color: Colors.blue.shade100,
                                      ),
                                      width: 150,
                                      height: 35,
                                      child: DropdownButton<String>(
                                        value: value,
                                        iconSize: 32,

                                        icon: Icon(Icons.arrow_drop_down,
                                            color: Colors.blue),
                                        isExpanded: true,
                                        items:
                                            items.map(buildMenuItem).toList(),
                                        onChanged: (value) =>
                                            setState(() => this.value = value),
                                        hint: Text(
                                          "Nama Outlet",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Colors.blue),
                                        ),
                                        //elevation: 20,
                                        //titleSpacing: 20,
                                      )),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(bottom: 0),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(14),
                                        border: Border.all(
                                            color: Colors.blue.shade100,
                                            width: 1),
                                        color: Colors.blue.shade100,
                                      ),
                                      width: 325,
                                      height: 35,
                                      child: DropdownButton<String>(
                                        value: value,
                                        iconSize: 32,
                                        icon: Icon(Icons.arrow_drop_down,
                                            color: Colors.blue),
                                        isExpanded: true,
                                        items:
                                            items.map(buildMenuItem).toList(),
                                        onChanged: (value) =>
                                            setState(() => this.value = value),
                                        hint: Text(
                                            "Jenis Laporan  19/10/2012 - 19/10/2012",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14,
                                                color: Colors.blue)),

                                        //elevation: 20,
                                        //titleSpacing: 20,
                                      )),
                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              )
                            ]))
                      ])))),
      body: Container(
          padding: EdgeInsets.only(left: 10, top: 15, right: 10),
          child: ListView(children: [
            SizedBox(
              height: 5,
            ),
            Center(
              child: Text("Input",
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      color: Colors.white)),
            ),
            Container(
              margin: EdgeInsets.only(left: 0, right: 0, top: 5),
              padding: EdgeInsets.only(bottom: 5, top: 8, left: 320, right: 10),
              height: 35,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey, width: 1)),
              width: 390,
              child: Text(
                "0 | IDR",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.blue),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text("Input",
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      color: Colors.white)),
            ),
            Container(
              margin: EdgeInsets.only(left: 0, right: 0, top: 5),
              padding: EdgeInsets.only(bottom: 5, top: 8, left: 320, right: 10),
              height: 35,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey, width: 1)),
              width: 390,
              child: Text(
                "0 | IDR",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.blue),
              ),
            ),
            SizedBox(
              height: 250,
            ),
            Container(
              margin: EdgeInsets.only(left: 117, right: 117, top: 135),
              padding: EdgeInsets.only(bottom: 5, top: 8, left: 55, right: 20),
              height: 35,
              decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey, width: 1)),
              child: Text(
                "Submit",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.blue),
              ),
            ),
          ])));
  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
      value: item,
      child: Text(
        item,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 14, color: Colors.blue),
      ));
}
