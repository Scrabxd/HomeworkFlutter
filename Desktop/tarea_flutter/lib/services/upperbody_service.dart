import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:tarea_flutter/models/upperbody.dart';
import 'package:http/http.dart' as http;

class UpperbodyService extends ChangeNotifier{

  final String _baseUrl = 'flutterhomework-8dfc2-default-rtdb.firebaseio.com';
  final List<Upperbody> prods = [];


  bool isLoading = true;

  UpperbodyService(){
    this.loadUpperbody();
  }

  Future<List<Upperbody>> loadUpperbody() async{

    this.isLoading = true;
    notifyListeners();
  
    final url = Uri.https(_baseUrl,'upperbody.json');

    final resp = await http.get(url);

    final Map<String, dynamic> upperbodyMap = json.decode(resp.body);

    upperbodyMap.forEach((key, value) {
      final upp = Upperbody.fromMap(value);
      this.prods.add(upp);
    });

    this.isLoading = false;
    notifyListeners();

    print(upperbodyMap);

    return prods;
    
  }
}