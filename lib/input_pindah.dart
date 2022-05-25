import 'package:flutter/material.dart';

class InputPindah extends StatefulWidget {
  @override
  _InputPindahState createState() => _InputPindahState();
}

class _InputPindahState extends State<InputPindah> {
  final items = ['Nama Outlet', 'Nama Outlet', 'Nama Outlet', 'Nama Outlet'];
  String? value;

  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.blue,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(140),
          child: AppBar(
            backgroundColor: Colors.white,
            title: Text('Pindah',
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
              padding: EdgeInsets.only(top: 110, bottom: 0, left: 0, right: 35),

              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Expanded(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                      SizedBox(
                        width: 5,
                      ),
                      Column(children: [
                        Text(
                            'Dari                                                     Ke',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                //letterSpacing: 1,
                                color: Colors.blue)),
                        Row(children: [
                          Container(
                              margin: EdgeInsets.only(bottom: 0),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(
                                    color: Colors.blue.shade100, width: 1),
                                color: Colors.blue.shade100,
                              ),
                              width: 150,
                              height: 45,
                              child: DropdownButton<String>(
                                value: value,
                                iconSize: 36,
                                icon: Icon(Icons.arrow_drop_down,
                                    color: Colors.blue),
                                isExpanded: true,
                                items: items.map(buildMenuItem).toList(),
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
                            width: 25,
                          ),
                          Container(
                              margin: EdgeInsets.only(bottom: 0),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(
                                    color: Colors.blue.shade100, width: 1),
                                color: Colors.blue.shade100,
                              ),
                              width: 150,
                              height: 45,
                              child: DropdownButton<String>(
                                value: value,
                                iconSize: 36,
                                icon: Icon(Icons.arrow_drop_down,
                                    color: Colors.blue),
                                isExpanded: true,
                                items: items.map(buildMenuItem).toList(),
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
                        ]),
                      ])
                    ]))
              ]),
            ),
          )),
      body: Container(
          padding: EdgeInsets.only(left: 10, top: 15, right: 10),
          child: ListView(children: [
            SizedBox(
              height: 5,
            ),
            Center(
              child: Text("Start Date",
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      color: Colors.white)),
            ),
            Container(
              margin: EdgeInsets.only(left: 0, right: 0, top: 5),
              padding: EdgeInsets.only(bottom: 5, top: 8, left: 157, right: 10),
              height: 35,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey, width: 1)),
              width: 390,
              child: Text(
                "19/10/2012",
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
              height: 20,
            ),
            Center(
              child: Text("Photo",
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      color: Colors.white)),
            ),
            Container(
              margin: EdgeInsets.only(left: 0, right: 0, top: 5),
              padding:
                  EdgeInsets.only(bottom: 10, top: 5, left: 40, right: 250),
              height: 75,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey, width: 1)),
              width: 390,
              child: Container(
                margin: EdgeInsets.only(left: 0, right: 0, top: 5),
                padding:
                    EdgeInsets.only(bottom: 10, top: 15, left: 20, right: 20),
                height: 75,
                decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey, width: 1)),
                child: Text(
                  "Tambahkan Foto",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                      color: Colors.blue),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text("Keterangan",
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
            ),
            Container(
              margin: EdgeInsets.only(left: 117, right: 117, top: 200),
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
