// ignore_for_file: non_constant_identifier_names, avoid_single_cascade_in_expression_statements

import 'dart:developer';
import 'package:firebase_database/firebase_database.dart';
import 'package:app/data/models/data.model.dart';
import 'package:uuid/uuid.dart';

class DataRepository {
  final PostDbRef = FirebaseDatabase.instance.ref("posts");
  var uuid = Uuid();
  storeData(data) async {
    try {
      print(
        "Data $data",
      );
      try {
        PostDbRef.child(uuid.v4()).set(data);
      } catch (e) {}
    } catch (e) {
      return e;
    }
  }
}
