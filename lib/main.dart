import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hotspot Control'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () async {
              bool isHotspotEnabled = await _isHotspotEnabled();
              print('Hotspot Enabled: $isHotspotEnabled');
              await _toggleHotspot(!isHotspotEnabled);
            },
            child: Text('Toggle Hotspot'),
          ),
        ),
      ),
    );
  }

  Future<bool> _isHotspotEnabled() async {
    try {
      return await MethodChannel('hotspot').invokeMethod('isHotspotEnabled');
    } on PlatformException catch (e) {
      print("Failed to get hotspot state: ${e.message}");
      return false;
    }
  }

  Future<void> _toggleHotspot(bool enable) async {
    try {
      await MethodChannel('hotspot').invokeMethod('setHotspotEnabled', enable);
    } on PlatformException catch (e) {
      print("Failed to toggle hotspot: ${e.message}");
    }
  }
}



// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HeroAnimation(),
//     );
//   }
// }
//
// class HeroAnimation extends StatelessWidget {
//   const HeroAnimation({super.key});
//
//   Widget build(BuildContext context) {
//     var timeDilation = 5.0;
//
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Basic Hero Animation'),
//       ),
//       body: Center(
//         child: PhotoHero(
//           photo: 'https://ahmadalfrehan.com/assets/assets/images/logo.jpg',
//           width: 300.0,
//           onTap: () {
//             Navigator.of(context)
//                 .push(MaterialPageRoute<void>(builder: (context) {
//               return Scaffold(
//                 appBar: AppBar(
//                   title: const Text('Flippers Page'),
//                 ),
//                 body: Container(
//                   color: Colors.lightBlueAccent,
//                   padding: const EdgeInsets.all(16),
//                   alignment: Alignment.topLeft,
//                   child: PhotoHero(
//                     photo:
//                         'https://ahmadalfrehan.com/assets/assets/images/logo.jpg',
//                     width: 100.0,
//                     onTap: () {
//                       Navigator.of(context).pop();
//                     },
//                   ),
//                 ),
//               );
//             }));
//           },
//         ),
//       ),
//     );
//   }
// }
//
// class PhotoHero extends StatelessWidget {
//   const PhotoHero({
//     super.key,
//     required this.photo,
//     this.onTap,
//     required this.width,
//   });
//
//   final String photo;
//   final VoidCallback? onTap;
//   final double width;
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: width,
//       child: Hero(
//         tag: photo,
//         child: Material(
//           color: Colors.transparent,
//           child: InkWell(
//             onTap: () {},
//             child: Image.network(
//               photo,
//               fit: BoxFit.contain,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   static RectTween _createRectTween(Rect? begin, Rect? end) {
//     return MaterialRectCenterArcTween(begin: begin, end: end);
//   }
// }
