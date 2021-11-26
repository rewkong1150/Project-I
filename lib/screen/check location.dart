import 'dart:async';


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Checklocation extends StatefulWidget {
  final auth = FirebaseAuth.instance;

  @override
  _ChecklocationState createState() => _ChecklocationState();
}

class _ChecklocationState extends State<Checklocation> {
  double a;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ตำแหน่งที่คุณเคยไป')),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("rewkong@gmail.com").snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView(
            children: snapshot.data.docs.map<Widget>((document) {
              return Container(
              width: 360.0,
              height: 120.0,
              child: RaisedButton(
                child: Text(
                  document["latitude"].toString()+document["longtitude"].toString(),
                  style: TextStyle(fontSize: 30),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Text("Screen 2");
                  }));
                },
              ),
            );
            }).toList(),
          );
        },
      ),
    );
  }
}
