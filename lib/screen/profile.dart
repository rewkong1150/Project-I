import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Checkprofile extends StatefulWidget {
  final auth = FirebaseAuth.instance;

  @override
  _CheckprofileState createState() => _CheckprofileState();
}

class _CheckprofileState extends State<Checkprofile> {
  double a;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ประวัติของคุณ')),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("profile").snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView(
            children: snapshot.data.docs.map<Widget>((document) {
              return SizedBox(
                child: Column(
                  children: [
                    Text(
                      document["ชื่อ"].toString(),
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(document["นามสกุล"].toString(),
                        style: TextStyle(fontSize: 30)),
                    Text(document["ยาที่แพ้"].toString(),
                        style: TextStyle(fontSize: 30)),
                    Text(document["เบอร์มือถือ"].toString(),
                        style: TextStyle(fontSize: 30))
                  ],
                ),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
