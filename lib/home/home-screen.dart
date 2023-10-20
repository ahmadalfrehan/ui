import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        actions: [
          Container(
            clipBehavior: Clip.none,
            padding: const EdgeInsets.symmetric(horizontal: 30),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://ahmadalfrehan.com/assets/assets/images/logo.jpg'),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hi Lay!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  Icon(Icons.info, size: 28, color: Colors.black54)
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "20% of tasks completed",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  Stack(
                    children: [
                      Container(
                        width: 200,
                        height: 10,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      Container(
                        width: 70,
                        height: 10,
                        decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 25),
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Container(
                    height: 220.0,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: const Color(0xFF6143e1),
                        borderRadius: BorderRadius.circular(50)),
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    decoration: const BoxDecoration(
                        color: Color(0xFF6e52e3), shape: BoxShape.circle),
                  ),
                  Positioned(
                   left: 0,
                    bottom: 0,
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: const BoxDecoration(
                          color: Color(0xFF6e52e3), shape: BoxShape.circle),
                    ),
                  ),
                  Container(
                    height: 220.0,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        // color: const Color(0xFF6143e1),
                        borderRadius: BorderRadius.circular(50)),
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.message, color: Colors.white),
                            Icon(Icons.density_medium, color: Colors.white)
                          ],
                        ),
                        const SizedBox(height: 20),
                        const Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('App design for uper',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800)),
                                Text('Last worked 5 days ago',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400)),
                              ],
                            ),
                          ],
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            Stack(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(color: Colors.white),
                                          image: const DecorationImage(
                                            image: NetworkImage(
                                                'https://ahmadalfrehan.com/assets/assets/images/logo.jpg'),
                                          ),
                                        )),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const SizedBox(width: 30),
                                    Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(color: Colors.white),
                                          image: const DecorationImage(
                                            image: NetworkImage(
                                                'https://ahmadalfrehan.com/assets/assets/images/ahmad.jpg'),
                                          ),
                                        )),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const SizedBox(width: 60),
                                    Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(color: Colors.black),
                                        image: const DecorationImage(
                                          image: NetworkImage(
                                              'https://ahmadalfrehan.com/assets/assets/images/hew-logo.png'),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Monthly Tasks",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey[300], elevation: 0),
                          child: const Text(
                            'Archive',
                            style: TextStyle(color: Colors.black),
                          )),
                      const SizedBox(width: 15),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red, elevation: 0),
                          child: const Text(
                            '+New',
                            style: TextStyle(color: Colors.white),
                          )),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 15),
              _inAppDesign(),
              const SizedBox(height: 25),
              _inAppDesign(),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Statistics",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey[300], elevation: 0),
                        child: const Text(
                          'View all',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 90,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => const SizedBox(width: 20),
                  itemCount: 3,
                  itemBuilder: (context, index) => Row(
                    children: [
                      Container(
                        height: 90,
                        width: MediaQuery.of(context).size.width / 1.5,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0xFFe64f78)),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Weekly tasks",
                                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "25% archived",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                SizedBox(
                                  height: 50,
                                  width: 50,
                                  child: CircularProgressIndicator(
                                    color: Colors.white,
                                    value: 0.55,
                                    backgroundColor: Colors.grey,
                                  ),
                                ),
                                Text(
                                  "85%",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        height: 90,
                        width: MediaQuery.of(context).size.width / 1.5,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0xFF6143e1)),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                SizedBox(
                                  height: 50,
                                  width: 50,
                                  child: CircularProgressIndicator(
                                    color: Colors.white,
                                    value: 0.55,
                                    backgroundColor: Colors.grey,
                                  ),
                                ),
                                Text(
                                  "85%",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  _inAppDesign() {
    return Row(
      children: [
        Container(
          height: 55,
          width: 50,
          decoration: BoxDecoration(
              // color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                  image: NetworkImage(
                      "https://ahmadalfrehan.com/assets/assets/images/clean-code.png"),
                  fit: BoxFit.fill)),
        ),
        const SizedBox(width: 5),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Github',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            Text(
              'In App Design',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 11),
            ),
          ],
        ),
        const Spacer(),
        Row(
          children: [
            Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white),
                          image: const DecorationImage(
                            image: NetworkImage(
                                'https://ahmadalfrehan.com/assets/assets/images/logo.jpg'),
                          ),
                        )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(width: 30),
                    Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white),
                          image: const DecorationImage(
                            image: NetworkImage(
                                'https://ahmadalfrehan.com/assets/assets/images/ahmad.jpg'),
                          ),
                        )),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}