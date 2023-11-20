import 'package:designtra/home/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Another extends GetView<Controller> {
  const Another({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller  = Get.put(Controller());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF38393d),
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        color: const Color(0xFF38393d),
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
            ElevatedButton(onPressed: (){
              controller.predictData();

            }, child: Text("predict"),),
          ],
        ),
      ),
    );
  }
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
                style: TextStyle(color: Colors.white, fontSize: 20),
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
