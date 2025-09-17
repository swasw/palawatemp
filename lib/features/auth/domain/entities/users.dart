// import 'package:firebase_auth/firebase_auth.dart' as firebase;

// class AppUser {
//   final String uid;
//   final String? email;
//   final String? displayName;
//   // final String? photoUrl;

//   AppUser({
//     required this.uid,
//     this.email,
//     this.displayName,
//     // this.photoUrl,
//   });

//   /// Buat dari Firebase User
//   factory AppUser.fromFirebase(firebase.User user) {
//     return AppUser(
//       uid: user.uid,
//       email: user.email,
//       displayName: user.displayName,
//       // photoUrl: user.photoURL,
//     );
//   }

//   /// Convert ke Map (misalnya buat Firestore)
//   Map<String, dynamic> toMap() {
//     return {
//       'uid': uid,
//       'email': email,
//       'displayName': displayName,
//       // 'photoUrl': photoUrl,
//     };
//   }

//   /// Buat dari Map (kalau ambil dari Firestore)
//   factory AppUser.fromMap(Map<String, dynamic> map) {
//     return AppUser(
//       uid: map['uid'],
//       email: map['email'],
//       displayName: map['displayName'],
//       // photoUrl: map['photoUrl'],
//     );
//   }
// }
