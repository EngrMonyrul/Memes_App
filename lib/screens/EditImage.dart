// import 'package:flutter/material.dart';
// import 'package:memesapp/screens/downloadScreen.dart';

// class EditImageAndSave extends StatefulWidget {
//   const EditImageAndSave({super.key});

//   @override
//   State<EditImageAndSave> createState() => _EditImageAndSaveState();
// }

// class _EditImageAndSaveState extends State<EditImageAndSave> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           children: [
//             SizedBox(
//               height: MediaQuery.of(context).size.height * 0.4,
//             ),
//             GestureDetector(
//               onTap: () {
//                 showDialog(
//                     context: context,
//                     builder: (context) => const DownloadingScreen());
//                 setState(() {});
//               },
//               child: Container(
//                 height: 50,
//                 width: 50,
//                 decoration: BoxDecoration(
//                   color: Colors.yellow,
//                   shape: BoxShape.circle,
//                   border: Border.all(
//                     color: Colors.black,
//                   ),
//                 ),
//                 child: const Icon(
//                   Icons.download_outlined,
//                   size: 40,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   AlertDialog downloadingFiles() {
//     return AlertDialog(
//       backgroundColor: Colors.black.withOpacity(0.3),
//       title: const Text('Downloading'),
//       content: Container(
//         height: 150,
//         width: 150,
//         color: Colors.white,
//       ),
//     );
//   }
// }
