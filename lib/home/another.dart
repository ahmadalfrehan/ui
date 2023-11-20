import 'package:designtra/home/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Another extends GetView<Controller> {
  const Another({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller  = Get.put(Controller());
    return Scaffold(
      backgroundColor: const Color(0xFF38393d),
      appBar: AppBar(
        backgroundColor: const Color(0xFF38393d),
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        color: const Color(0xFF38393d),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _row(),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white54),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: [
                    Flexible(
                      child: TextFormField(
                          decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.search, color: Colors.white54),
                        label: Text(
                          "Search Food ...",
                          style: TextStyle(color: Colors.white54, fontSize: 17),
                        ),
                      )),
                    ),
                    Container(
                      height: 40,
                      width: 1.5,
                      color: Colors.white54,
                    ),
                    const SizedBox(width: 15),
                    const Icon(
                      Icons.filter_list,
                      color: Colors.white54,
                    ),
                    const SizedBox(width: 15),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (var i = 0; i < 3; i++) setTh(),
                ],
              ),
              20.height,
              _textFormField(controller.LotArea, 'LotArea'),
              15.height,
              _textFormField(controller.YearBuilt, 'YearBuilt'),
              15.height,
              _textFormField(controller.stFlrSF, '1stFlrSF'),
              15.height,
              _textFormField(controller.ndFlrSF, '2ndFlrSF'),
              15.height,
              _textFormField(controller.FullBath, 'FullBath'),
              15.height,
              _textFormField(controller.BedroomAbvGr, 'BedroomAbvGr'),
              15.height,
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF38393d),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: const BorderSide(color: Colors.white54)),
                  fixedSize: Size(Get.width / 1.4, 40),
                ),
                onPressed: () {
                  controller.predictData();
                },
                child: const Text("Predict"),
              ),
              Obx(
                () => controller.isLoading.value
                    ? const CircularProgressIndicator()
                    : Text(
                        'Result = ${controller.result.value}\$',
                        style: const TextStyle(
                            color: Colors.white54,
                            fontSize: 19,
                            fontWeight: FontWeight.w800),
                      ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

extension EmptySpace on num {
  SizedBox get height => SizedBox(height: toDouble());

  SizedBox get width => SizedBox(width: toDouble());
}

_textFormField(TextEditingController textEditingController, String hint) {
  return TextFormField(
    controller: textEditingController,
    decoration: InputDecoration(
      label: Text(hint),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white54),
        borderRadius: BorderRadius.circular(15),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white54),
        borderRadius: BorderRadius.circular(15),
      ),
      border: OutlineInputBorder(
        borderSide: const BorderSide(
            color: Colors.white54, style: BorderStyle.solid, width: 2),
        borderRadius: BorderRadius.circular(15),
      ),
    ),
  );
}

setTh() {
  return Stack(
    alignment: Alignment.centerLeft,
    children: [
      Container(
        width: 123,
        height: 60,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: Colors.white54),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text("Pizza",style: TextStyle(color: Colors.white54),),
          ],
        ),
      ),
      Container(
        width: 75,
        height: 75,
        decoration: BoxDecoration(
          color: const Color(0xFF38393d),
          shape: BoxShape.circle,
          image: const DecorationImage(
            image: NetworkImage('https://ahmadalfrehan.com/assets/assets/images/logo.jpg')
          ),
          border: Border.all(color: Colors.white54),
        ),

      )
    ],
  );
}

_row() {
  return Row(
    children: [
      const Column(
        children: [
          Text(
            "Your Location",
            style: TextStyle(color: Colors.grey),
          ),
          Row(
            children: [
              Icon(
                Icons.ac_unit,
                color: Colors.white,
              ),
              Text(
                " Multan",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ],
          ),
        ],
      ),
      const Spacer(),
      Container(
        width: 30,
        height: 30,
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: const Icon(Icons.notifications),
      ),
    ],
  );
}
