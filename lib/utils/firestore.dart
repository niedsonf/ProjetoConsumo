import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Firestore {
  static Future<DocumentSnapshot> userContent() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    FirebaseFirestore db = FirebaseFirestore.instance;
    final String id = FirebaseAuth.instance.currentUser!.uid;
    return await db.collection("users").doc(id).get();
  }

  /*static Future<bool> isValidID(String id) async {
    FirebaseFirestore db = FirebaseFirestore.instance;
    var data;
    await db
        .collection("sensores")
        .doc(id)
        .get()
        .then((value) => data = value.data());
    if (data != null) {
      return true;
    } else {
      return false;
    }
  }*/

  static Future<Map<String, dynamic>?> sensorData(String id) async {
    FirebaseFirestore db = FirebaseFirestore.instance;

    var data = await db.collection("sensores").doc(id).get();
    if (data.exists) {
      return data.data();
    } else {
      return null;
    }
  }
}
