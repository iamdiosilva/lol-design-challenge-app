import 'dart:convert';
import 'package:desafio_loldesign/models/rate.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RatesRepository extends ChangeNotifier {
  List<Rate> _rates = [];

  List<Rate> get rates => _rates;
  Set<int> dddOrigins() => _rates.map((e) => e.dddOrigin).toSet();

  Set<int> dddDestinies(int? dddOrigin) => _rates
      .where((element) => element.dddOrigin == dddOrigin)
      .map((e) => e.dddDestiny)
      .toSet();

  RatesRepository() {
    _getRates();
  }

  Rate? getRate(int? dddOrigin, int? dddDestiny) {
    int index = _rates.indexWhere((element) =>
        element.dddOrigin == dddOrigin && element.dddDestiny == dddDestiny);
    return index >= 0 ? _rates[index] : null;
  }

  Future<void> _getRates() async {
    String uri = 'https://desafio-loldesign.herokuapp.com/api/v1/Rates';

    try {
      final response = await http.get(Uri.parse(uri));
      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        final List<dynamic> plans = json['data'];
        _rates = plans.map((e) => Rate.fromJson(e)).toList();
      }
      notifyListeners();
    } catch (e) {
      print(e);
    }
  }
}
