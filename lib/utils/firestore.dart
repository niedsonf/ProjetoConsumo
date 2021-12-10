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
}
