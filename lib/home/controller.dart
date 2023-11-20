import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class Controller extends GetxController {
  RxInt LotArea = 8450.obs;
  RxInt YearBuilt = 2003.obs;
  RxInt stFlrSF = 856.obs;
  RxInt ndFlrSF = 564.obs;
  RxInt FullBath = 2.obs;
  RxInt BedroomAbvGr = 3.obs;
  RxDouble result = 0.0.obs;
  RxInt TotRmsAbvGrd = 22.obs;

  predictData() async {
    try {
      final response = await http.post(
        Uri.parse('http://127.0.0.1:8000/predict'),
        body: json.encode(
          {
            "LotArea": LotArea.value,
            "YearBuilt": YearBuilt.value,
            "stFlrSF": stFlrSF.value,
            "ndFlrSF": ndFlrSF.value,
            "FullBath": FullBath.value,
            "BedroomAbvGr": BedroomAbvGr.value,
            "TotRmsAbvGrd": TotRmsAbvGrd.value
          },
        ),
      );
      print(response.body);
      var data = json.decode(response.body);
      print(data);
      result.value = data['predicted_price'];
    } catch (error) {
      print(error);
    }
  }
}
