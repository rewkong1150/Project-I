import 'package:GoogleMaps/screen/check%20location.dart';
import 'package:GoogleMaps/models/go_hospital.dart';
import 'package:GoogleMaps/screen/news.dart';
import 'package:GoogleMaps/screen/profile.dart';
import 'package:GoogleMaps/screen/regisprofile.dart';
import 'package:flutter/material.dart';
import 'Screenmenu.dart';
import 'placeholder_widget.dart';

import '../check.dart';
import '../found.dart';
import '../login.dart';
import '../map.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  get size => null;

  get onPressed => null;
  int _currentIndex = 0;
  final screens = [Home(), Checkprofile()];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Row(
          children: [
            Container(
              height: 45,
              width: 45,
              margin: EdgeInsets.only(left: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset("assets/images/logo.png"),
              ),
            ),
            SizedBox(width: 10),
            Text(
              'Hi,Rewkong',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        centerTitle: true,
        actions: [
          PopupMenuButton<int>(
              onSelected: (item) => onSelected(context, item),
              itemBuilder: (context) =>
                  [PopupMenuItem<int>(value: 0, child: Text('ออกจากระบบ'))]),
        ],
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Hospital(),
        Container(
          padding: EdgeInsets.all(15),
          child: Text(
            'MENU',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Container(
              height: 50.0,
              width: 400,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    offset: Offset(0.0, 20.0),
                    blurRadius: 30.0,
                    color: Colors.black12)
              ], color: Colors.white, borderRadius: BorderRadius.circular(2)),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 50.0,
                    width: 120.0,
                    padding:
                        EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
                    child: Text(
                      'จำนวนผู้ติดเชื้อ',
                      style: Theme.of(context)
                          .textTheme
                          .button
                          .apply(color: Colors.black),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(95.0),
                            topLeft: Radius.circular(95.0),
                            bottomRight: Radius.circular(200.0))),
                  ),
                  Icon(
                    Icons.new_releases,
                    size: 30.0,
                  )
                ],
              ),
            ),
          ),
        ),
        Center(
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MapsPage()));
            },
            child: Container(
              height: 70.0,
              width: 400.0,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    offset: Offset(0.0, 20.0),
                    blurRadius: 30.0,
                    color: Colors.black12)
              ], color: Colors.white, borderRadius: BorderRadius.circular(2)),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 50.0,
                    width: 120.0,
                    padding:
                        EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
                    child: Text(
                      'ส่งตำแหน่ง',
                      style: Theme.of(context)
                          .textTheme
                          .button
                          .apply(color: Colors.black),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(95.0),
                            topLeft: Radius.circular(95.0),
                            bottomRight: Radius.circular(200.0))),
                  ),
                  Icon(
                    Icons.map,
                    size: 30.0,
                  )
                ],
              ),
            ),
          ),
        ),
        Center(
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Checklocation()));
            },
            child: Container(
              height: 50.0,
              width: 400.0,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    offset: Offset(0.0, 20.0),
                    blurRadius: 30.0,
                    color: Colors.black12)
              ], color: Colors.white, borderRadius: BorderRadius.circular(2)),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 50.0,
                    width: 120.0,
                    padding:
                        EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
                    child: Text(
                      'Time line',
                      style: Theme.of(context)
                          .textTheme
                          .button
                          .apply(color: Colors.black),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(95.0),
                            topLeft: Radius.circular(95.0),
                            bottomRight: Radius.circular(200.0))),
                  ),
                  Icon(
                    Icons.timeline,
                    size: 30.0,
                  )
                ],
              ),
            ),
          ),
        ),
        Center(
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RegisterProfile()));
            },
            child: Container(
              height: 60.0,
              width: 400.0,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    offset: Offset(0.0, 20.0),
                    blurRadius: 30.0,
                    color: Colors.black12)
              ], color: Colors.white, borderRadius: BorderRadius.circular(2)),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 50.0,
                    width: 120.0,
                    padding:
                        EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
                    child: Text(
                      'บันทึกข้อมูล',
                      style: Theme.of(context)
                          .textTheme
                          .button
                          .apply(color: Colors.black),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(95.0),
                            topLeft: Radius.circular(95.0),
                            bottomRight: Radius.circular(200.0))),
                  ),
                  Icon(
                    Icons.save,
                    size: 30.0,
                  )
                ],
              ),
            ),
          ),
        ),
        Center(
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => News()));
            },
            child: Container(
              height: 60.0,
              width: 400.0,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    offset: Offset(0.0, 20.0),
                    blurRadius: 30.0,
                    color: Colors.black12)
              ], color: Colors.white, borderRadius: BorderRadius.circular(2)),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 50.0,
                    width: 120.0,
                    padding:
                        EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
                    child: Text(
                      'ข่าวสารทั่วไป',
                      style: Theme.of(context)
                          .textTheme
                          .button
                          .apply(color: Colors.black),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(95.0),
                            topLeft: Radius.circular(95.0),
                            bottomRight: Radius.circular(200.0))),
                  ),
                  Icon(
                    Icons.pending,
                    size: 30.0,
                  )
                ],
              ),
            ),
          ),
        ),
        Center(
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Checkprofile()));
            },
            child: Container(
              height: 60.0,
              width: 400.0,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    offset: Offset(0.0, 20.0),
                    blurRadius: 30.0,
                    color: Colors.black12)
              ], color: Colors.white, borderRadius: BorderRadius.circular(2)),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 50.0,
                    width: 120.0,
                    padding:
                        EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
                    child: Text(
                      'ข้อมูลผู้ใช้',
                      style: Theme.of(context)
                          .textTheme
                          .button
                          .apply(color: Colors.black),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(95.0),
                            topLeft: Radius.circular(95.0),
                            bottomRight: Radius.circular(200.0))),
                  ),
                  Icon(
                    Icons.person,
                    size: 30.0,
                  )
                ],
              ),
            ),
          ),
        ),
      ]),
      bottomNavigationBar: _buildBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 0,
          backgroundColor: Colors.black,
          onPressed: () {},
          child: Icon(
            Icons.add,
            size: 35,
          )),
    );
  }

  void onSelected(BuildContext context, int item) {
    switch (item) {
      case 0:
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => Longin()),
        );
        break;
    }
  }

  Widget _buildBottomNavigationBar() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 10,
            )
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (value) => setState(() => _currentIndex = value),
          items: [
            BottomNavigationBarItem(
                label: 'หน้าหลัก', icon: Icon(Icons.home_rounded, size: 30)),
            BottomNavigationBarItem(
                label: 'ข้อมูลผู้ใช้',
                icon: Icon(Icons.person_rounded, size: 30)),
          ],
        ),
      ),
    );
  }

  icon(IconData homeRounded, size) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return RegisterProfile();
    }));
  }
}

class PlaceholderWidget {}
