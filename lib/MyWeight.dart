import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MyWeight {
  String user_name="";
  String email="";
  String uid="";
  bool weight_exist = false;
  String number = "";
  String firstname = "";
  String height = "";
  String weight = "";
  String age="";
  late User _authUser;
  // Method to print user information
  MyWeight getCurrentUser() {
    if(!weight_exist){
      _retrieveUser();
    }
    return this;
  }
  void _retrieveUser() async{
    var authUser =  FirebaseAuth.instance.currentUser;
    if(authUser == null){
      return;
    }
    this._authUser = authUser;
    this.email = authUser.email!;
    this.uid = authUser.uid;

    final docRef = FirebaseFirestore.instance.collection("User").doc(authUser.uid);
    docRef.get().then(
          (DocumentSnapshot doc) {
        final data = doc.data() as Map<String, dynamic>;
        weight_exist = true;
        this.weight = data["weight"];
      },
      onError: (e) => print("Error getting document: $e"),
    );
  }
}
