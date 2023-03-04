

import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/my_appointement.dart';
import '../models/my_user.dart';


class DataBaseUtils {
  static CollectionReference<MyUser> getUsersCollection() {
    return FirebaseFirestore.instance
        .collection(MyUser.COLLECTION_NAME)
        .withConverter<MyUser>(
          fromFirestore: (snapshot, options) =>
              MyUser.fromJson(snapshot.data()!),
          toFirestore: (value, options) => value.toJson(),
        );
  }

  static Future<void> AddUserToFirestore(MyUser user) {
    return getUsersCollection().doc(user.id).set(user);
  }

  static Future<MyUser?> readUser(String id) async {
    DocumentSnapshot<MyUser> docSnapShot = await getUsersCollection().doc(id).get();
    var myUser = docSnapShot.data();
    return myUser;
  }









  static CollectionReference<MyAppointment> getAppointmentsCollection(String userId) {
    return getUsersCollection()
        .doc(userId)
        .collection(MyAppointment.COLLECTION_NAME)
        .withConverter<MyAppointment>(
      fromFirestore: (snapshot, options) =>
          MyAppointment.fromJson(snapshot.data()!),
      toFirestore: (value, options) => value.toJson(),
    );
  }

  static Future<void> addAppointmentToFirestore(MyAppointment appointment) {
    var docRef = getAppointmentsCollection(appointment.userId).doc();
    appointment.id = docRef.id;
    return docRef.set(appointment);
  }

  static Stream<QuerySnapshot<MyAppointment>> getAppointmentsFromFirestore(String userId) {
    return getAppointmentsCollection(userId).orderBy("date").snapshots();
  }

}
