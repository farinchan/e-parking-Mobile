import 'package:e_parking_mobile/data/api_services.dart';
import 'package:flutter/material.dart';

class SaldoProvider extends ChangeNotifier {
  int? saldoId;
  String? uid;
  int? saldoSisa;
  int? saldoTerpakai;

  Future<void> getSaldo() async {
    var result = await ApiServices().SaldoEndpoint();
    saldoId = result.result.saldoId;
    uid = result.result.uid;
    saldoSisa = result.result.saldoSisa;
    saldoTerpakai = result.result.saldoTerpakai;
    notifyListeners();
  }
}
