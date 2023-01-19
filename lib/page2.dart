import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Screen2State();
}

class _Screen2State extends State<Page2> {
  List l1 = [
    "Android",
    "Animat",
    "DCIM",
    "Document",
    "Download",
    "dualspace",
    "dualspace",
    "FileExplorer",
    "Fonts",
    "Dcoder",
    "Mega",
    "MIUI",
    "Music",
    "Mxshare",
    "Biodata"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.menu, color: Colors.white.withOpacity(0.80), size: 30),
              Icon(Icons.alarm,
                  color: Colors.white54.withOpacity(0.80), size: 30),
              Icon(Icons.file_copy_outlined, color: Colors.blue, size: 30),
              Icon(Icons.search,
                  color: Colors.white.withOpacity(0.80), size: 30),
            ],
          ),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 1,
                  width: double.infinity,
                  color: Colors.grey.withOpacity(0.30),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Container(
                        width: 50,
                        height:80,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            border:
                                Border.all(color: Color(0xffFCBA48), width: 3),
                            shape: BoxShape.circle),
                        alignment: Alignment.center,
                        child: Text("99%",
                            style: TextStyle(
                                color: Color(0xffFCBA48), fontSize: 13)),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Storage",
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.80),
                                  fontSize: 20)),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              Text("118.80GB",
                                  style: TextStyle(
                                      color: Color(0xffFCBA48), fontSize: 15)),
                              Text("/125GB",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15)),
                            ],
                          ),
                        ],
                      ),
                      Expanded(child: SizedBox(width: 50)),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white.withOpacity(0.80),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 7,
                  width: double.infinity,
                  color: Colors.grey.withOpacity(0.20),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Internal storage",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.80),
                              fontSize: 18)),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white.withOpacity(0.80),
                        size: 15,
                      ),
                      Expanded(child: SizedBox(width: 10)),
                      Icon(
                        Icons.list,
                        color: Colors.white.withOpacity(0.80),
                        size: 25,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.more_vert,
                        color: Colors.white.withOpacity(0.80),
                        size: 18,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 1,
                  width: double.infinity,
                  color: Colors.grey.withOpacity(0.30),
                ),
                Expanded(
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Box("${l1[0]}"),
                          Box("${l1[1]}"),
                          Box("${l1[2]}"),
                          Box("${l1[3]}"),
                          Box("${l1[4]}"),
                          Box("${l1[5]}"),
                          Box("${l1[6]}"),
                          Box("${l1[7]}"),
                          Box("${l1[8]}"),
                          Box("${l1[9]}"),
                          Box("${l1[10]}"),
                          Box("${l1[11]}"),
                          Box("${l1[12]}"),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Align(
                alignment: Alignment(0.85, 0.90),
                child: FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        Navigator.pushNamed(context, '3');
                      });
                    },
                    child: Icon(
                      Icons.navigate_next_outlined,
                      size: 40,
                    )))
          ],
        ),
      ),
    );
  }

  Widget Box(String data) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              Icons.folder,
              color: Color(0xffFCBA48),
              size: 60,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$data",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                SizedBox(height: 10),
                Text("4 items | 28/10/20  11:08 PM",
                    style: TextStyle(color: Colors.white, fontSize: 10)),
              ],
            ),
            Expanded(child: SizedBox(width: 25)),
            Icon(
              Icons.arrow_forward_ios,
              size: 15,
              color: Colors.white.withOpacity(0.80),
            ),
            SizedBox(width: 10),
          ],
        ),
        Container(
          height: 1,
          width: double.infinity,
          color: Colors.grey.withOpacity(0.20),
        ),
      ],
    );
  }
}
