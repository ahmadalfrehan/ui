import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class Controller extends GetxController {
  TextEditingController LotArea = TextEditingController(text: '8450');
  TextEditingController YearBuilt = TextEditingController(text: '2003');
  TextEditingController stFlrSF = TextEditingController(text: '856');
  TextEditingController ndFlrSF = TextEditingController(text: '564');
  TextEditingController FullBath = TextEditingController(text: '2');
  TextEditingController BedroomAbvGr = TextEditingController(text: '3');
  RxDouble result = 0.0.obs;
  RxInt TotRmsAbvGrd = 22.obs;

  predictData() async {
    // try {
      final response = await http.post(
        Uri.parse('http://127.0.0.1:8000/predict'),
        headers: {
          'Content-Type': 'application/json'
        },
        body: json.encode({
          "LotArea": LotArea.text,
          "YearBuilt": YearBuilt.text,
          "stFlrSF": stFlrSF.text,
          "ndFlrSF": ndFlrSF.text,
          "FullBath": FullBath.text,
          "BedroomAbvGr": BedroomAbvGr.text,
          "TotRmsAbvGrd": TotRmsAbvGrd.value
        },)
      );
      print(response.body);
      var data = json.decode(response.body);
      print(data);
      result.value = data['predicted_price']??0.0;
    // } catch (error) {
    //   print(error);
    // }/
  }
}
