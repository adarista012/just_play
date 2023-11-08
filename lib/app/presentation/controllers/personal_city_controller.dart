import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:just_play/app/core/routes/routes.dart';

class PersonalCityController extends GetxController {
  final List<String> _listOfCities = [
    "La Paz, Bolivia",
    "Medellin, Colombia",
    "Detroit, USA",
  ];
  List<String> get listOfCities => _listOfCities;

  bool _isloading = false;
  bool get isLoading => _isloading;

  // ignore: prefer_final_fields
  List<Widget> _list = [];
  List<Widget> get list => _list;

  String? sport;

  PersonalCityController() {
    sport = Get.arguments;
    findCities();
  }

  void findCities() async {
    _isloading = true;
    update();
    await Future.delayed(const Duration(milliseconds: 1240));
    for (var e in _listOfCities) {
      _list.add(
        Card(
          child: ListTile(
            title: Text(e),
            onTap: () {
              Get.offAllNamed(Routes.HOME, arguments: [sport, e]);
            },
          ),
        ),
      );
    }
    _isloading = false;
    update();
  }
}
