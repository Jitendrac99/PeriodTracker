import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService{
  FirebaseAuth _auth =  FirebaseAuth.instance;

  Future<User?>signup(String email, String password,String firstname)async{
    try{
      UserCredential credential = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      // Create a new user with a first and last name
      FirebaseFirestore.instance.collection("User").doc(credential.user?.uid).set({
        "user_name":firstname,
        "email":email,
        "password":password,
      }).then((value) => print("sucessfull"));
      return credential.user;
    }
    catch(e){
      print(e);
    }
    return null;
  }
  Future<User?>signin(String email, String password)async{
    try{
      UserCredential credential = await _auth.signInWithEmailAndPassword(email: email, password: password);
      return credential.user;
    }
    catch(e){
      print("Error");
    }
    return null;
  }
}