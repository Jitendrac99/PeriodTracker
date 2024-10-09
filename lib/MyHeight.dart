import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MyHeight {
  String user_name="";
  String email="";
  String uid="";
  bool height_exist = false;
  String number = "";
  String firstname = "";
  String height = "";
  String weight = "";
  String age="";
  late User _authUser;
  // Method to print user information
  MyHeight getCurrentUser() {
    if(!height_exist){
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
        height_exist = true;
        this.height = data["Height"];
      },
      onError: (e) => print("Error getting document: $e"),
    );
  }
}
