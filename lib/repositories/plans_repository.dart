import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/plan.dart';

class PlansRepository extends ChangeNotifier {
  List<Plan> _plans = [];

  List<Plan> get plans => _plans;

  PlansRepository() {
    _getPlans();
  }

  Future<void> _getPlans() async {
    String uri = 'https://desafio-loldesign.herokuapp.com/api/v1/Plans';

    try {
      final response = await http.get(Uri.parse(uri));
      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        final List<dynamic> plans = json['data'];
        _plans = plans.map((e) => Plan.fromJson(e)).toList();
      }
      notifyListeners();
    } catch (e) {
      print(e);
    }
  }
}
