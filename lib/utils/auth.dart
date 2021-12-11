// ignore_for_file: non_constant_identifier_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:consumo/model/appuser.dart';
import 'package:consumo/utils/firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class Auth {
  static SnackBar customSnackBar(content) {
    return SnackBar(content: Text(content));
  }

  static Future<FirebaseApp> initializeFirebase(
      {required BuildContext context}) async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

  static Future isLoged({required BuildContext context}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    auth.currentUser;
  }

  static cadastrar(
      {required BuildContext context, required AppUser rUser}) async {
    FirebaseFirestore db = FirebaseFirestore.instance;
    FirebaseAuth auth = FirebaseAuth.instance;
    auth
        .createUserWithEmailAndPassword(
            email: rUser.email, password: rUser.senha)
        .then((firebaseUser) {
      db
          .collection("users")
          .doc(firebaseUser.user!.uid)
          .set({"nome": rUser.nome, "email": rUser.email});
      Navigator.pushNamedAndRemoveUntil(context, "/home", (route) => false);
    }).catchError((e) => ScaffoldMessenger.of(context)
            .showSnackBar(customSnackBar("Falha no cadastro")));
    ScaffoldMessenger.of(context).showSnackBar(customSnackBar("Processando"));
  }

  static logar({required BuildContext context, required AppUser rUser}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    auth
        .signInWithEmailAndPassword(email: rUser.email, password: rUser.senha)
        .then((firebaseUser) {
      Firestore.userContent().then((response) => Navigator.pushNamedAndRemoveUntil(context, "/home", (route) => false, arguments: response.data()));
      
    }).catchError((e) => ScaffoldMessenger.of(context)
            .showSnackBar(customSnackBar("Falha no login")));
    //ScaffoldMessenger.of(context).showSnackBar(customSnackBar("Processando"));
  }
}
