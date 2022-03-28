import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProviderPlatillos {
  FirebaseFirestore firestore = FirebaseFirestore.instance; 
  List<dynamic> Platillo = [];
  ProviderPlatillos() {
    loadData();
  }

  void loadData() {
    /*rootBundle.loadString('assets/data/platillos.json').then((data) {
      Map dataMap = json.decode(data);
      Platillo = dataMap['platillos'];
    });*/
    
    
  }
}

