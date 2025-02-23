import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  List<String> tags = [
    'Python',
    'JavaScrip',
    'php',
    'Website',
    'Vbnet',
    'AI',
    'Maching Lerening',
  ];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff020d1c),
        appBar: AppBar(
          title: Text('Profile'),
          backgroundColor: Color(0xff020d1c),
          elevation: 0,
          actions: <Widget>[
            Padding(padding: const EdgeInsets.only(right: 16.0), child: Icon(Icons.verified_user, color: Colors.red)),
          ],
        ),
        //bagian user
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/ahmad.jpg'),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Aldiansyah Bintang FP', style: TextStyle(fontSize: 20, color: Colors.white)),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.location_on,
                                color: Colors.white70,
                                size: 17,
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(left: 4.0),
                                  child: Text(
                                    'Sukoharjo, Jawa Tengah ',
                                    style: TextStyle(color: Colors.white70, fontSize: 16, letterSpacing: 3, wordSpacing: 2),
                                  )),
                            ],
                          ),
                        ),
                      ],
                    )),
              ],
            ),
            //bagian sosial media
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(children: <Widget>[
                    Text(
                      '250k',
                      style: TextStyle(fontSize: 20, color: Colors.blueAccent),
                    ),
                    Text('Pengikut', style: TextStyle(fontSize: 18, color: Colors.white))
                  ]),
                  Column(children: <Widget>[
                    Text(
                      '10k',
                      style: TextStyle(fontSize: 20, color: Colors.blueAccent),
                    ),
                    Text('Mengikuti', style: TextStyle(fontSize: 18, color: Colors.white))
                  ]),
                  Padding(
                    padding: const EdgeInsets.only(right: 32.0),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16.0, right: 16, top: 8, bottom: 8),
                        child: Text(
                          'Follow',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32),
                          gradient: LinearGradient(colors: [
                            Colors.blueAccent,
                            Colors.black54
                          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
                    ),
                  )
                ],
              ),
            ),
            //bagian tags
            Container(
              margin: EdgeInsets.only(top: 25),
              height: 45,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: tags.length,
                  itemBuilder: (BuildContext contect, int index) {
                    return Container(
                      margin: EdgeInsets.only(right: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(colors: [
                            Colors.purple,
                            Colors.blueAccent
                          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          tags[index],
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    );
                  }),
            ),
            //bagian autobiography
            Container(
              padding: EdgeInsets.fromLTRB(5.0, 50.0, 5.0, 4.0),
              margin: EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 4.0),
              height: 500,
              width: double.infinity,
              child: Card(
                child: Container(
                    color: Colors.blueAccent[200],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 30, right: 20, left: 70, bottom: 15),
                          child: Text('Biodata Mahasiswa', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(children: <Widget>[
                            Icon(Icons.person_pin),
                            Text('Nama       : Aldiansyah Bintang FP', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18))
                          ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(children: <Widget>[
                            Icon(Icons.dialpad),
                            Text('NIM          : 190103176', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18))
                          ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(children: <Widget>[
                            Icon(Icons.date_range),
                            Text('TTL          : Klaten 02-06-1999', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18))
                          ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(children: <Widget>[
                            Icon(Icons.contact_mail),
                            Text('E-mail      : aldipenddol77@gmail.com', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18))
                          ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(children: <Widget>[
                            Icon(Icons.contact_phone),
                            Text('Telepon   : 081226445989', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18))
                          ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(children: <Widget>[
                            Icon(Icons.home),
                            Text('Alamat    : Sukoharjo', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18))
                          ]),
                        ),
                      ],
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
