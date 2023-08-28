// import 'package:flutter/material.dart';
// import 'package:portfoliio2/constants/media_query.dart';

// import '../models/services_model.dart';

// class WebServicesWidget extends StatefulWidget {
//   final Services data;
//   const WebServicesWidget({required this.data, super.key});

//   @override
//   State<WebServicesWidget> createState() => _WebServicesWidgetState();
// }

// class _WebServicesWidgetState extends State<WebServicesWidget> {
//   Color _coloravatar = Colors.blue;
//   Color _colorimage = Colors.white;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 20.0, top: 8, right: 18, bottom: 8),
//       child: SizedBox(
//         width: MediaQuery.of(context).size.width * 0.25,
//         child: MouseRegion(
//           onEnter: (PointerEvent details) {
//             setState(() {
//               _coloravatar = Colors.white.withOpacity(0.7);
//               _colorimage = Colors.blue;
//             });
//           },
//           onExit: (PointerEvent details) {
//             setState(() {
//               _coloravatar = Colors.blue;
//               _colorimage = Colors.white;
//             });
//           },
//           child: Card(
//               elevation: 10,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Expanded(
//                     flex: 2,
//                     child: Padding(
//                       padding: const EdgeInsets.only(top: 20.0, left: 20.0),
//                       child: CircleAvatar(
//                         radius: 30,
//                         backgroundColor: _coloravatar,
//                         child: Container(
//                           decoration: BoxDecoration(
//                             shape: BoxShape.circle,
//                             border: Border.all(
//                               color: Colors.blue, // Set the border color
//                               width: 2, // Set the border width
//                             ),
//                           ),
//                           child: Padding(
//                             padding: const EdgeInsets.all(10.0),
//                             child: Image.asset(
//                               widget.data.imageLink,
//                               color: _colorimage,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     flex: 6,
//                     child: Padding(
//                       padding:
//                           const EdgeInsets.only(left: 20.0, top: 20, right: 10),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             widget.data.name,
//                             style: TextStyle(
//                                 fontSize: 16, fontWeight: FontWeight.w600),
//                           ),
//                           SizedBox(
//                             height:
//                                 GetScreenSize.getScreenWidth(context) * 0.05,
//                           ),
//                           Text(
//                             widget.data.description,
//                             style: TextStyle(
//                                 fontSize: 12,
//                                 fontWeight: FontWeight.w500,
//                                 color: Colors.grey),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               )),
//         ),
//       ),
//     );
//   }
// }
