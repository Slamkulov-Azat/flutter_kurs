// import 'package:flutter/material.dart';
// import 'package:flutter_kurs/models/reference_model.dart';
// import 'package:flutter_kurs/repositories/reference/reference_repo.dart';

// class ReferenceListButton extends StatelessWidget {
//   ReferenceListButton({
//     this.leading, 
//     this.title, 
//     this.subtitle, 
//     this.startroute,
//     this.notesroute,
//    //this.reference,
//   });

//   final Icon leading;
//   final String title;
//   final String subtitle;
//   final String startroute;
//   final String notesroute;
//   //final dynamic reference;

//   ReferenceRepo referenceBank = ReferenceRepo();

//   // @override
//   // Widget build(BuildContext context) {
//   //   return Container(
//   //     child: ListView.builder(
//   //       itemCount: referenceBank.length,
//   //       itemBuilder: (context, i) {},
//   //     ),
//   //   );
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return referenceBank.map(
//       (Reference e) => InkWell(
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: Color(0xffF5F5FA),
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(30),
//                   ),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black.withOpacity(0.3), //color of shadow
//                       spreadRadius: 5, //spread radius
//                       blurRadius: 7, // blur radius
//                       offset: Offset(2, 3),
//                     ),
//                   ],
//                 ),
//                 child: ListTile(
//                   leading: Image.asset(
//                     'assets/images/logo_flutter.jpg',
//                     width: 20,
//                     height: 20,
//                   ),
//                   title: Text(
//                     e.referenceName,
//                     style: TextStyle(fontSize: 20, fontFamily: "Montserrat"),
//                   ),
//                   trailing: Wrap(
//                     spacing: 12, // space between two icons
//                     children: const <Widget>[
//                       Icon(
//                         Icons.favorite_border,
//                         size: 30,
//                       ), // icon-1
//                       Icon(
//                         Icons.keyboard_arrow_right_sharp,
//                         size: 40,
//                       ), // icon-2
//                     ],
//                   ),
//                   onTap: () {
//                     // Navigator.push(
//                     //   context,
//                     //   MaterialPageRoute(
//                     //     builder: (context) =>
//                     //         Detail(e.appbarCenterText, e.bodyText),
//                     //   ),
//                     // );
//                   },
//                 ),
//               ),
//             ),
//           ),
//         ).toList();
//   }

//   // @override
//   // Widget build(BuildContext context) {
//   //   return  Card(
//   //         child: ListTile(
//   //           onTap: () => Navigator.pushNamed(context, route),
//   //           leading: leading,
//   //           title: Text(title),
//   //           subtitle: Text(subtitle),
//   //           trailing: Icon(Icons.keyboard_arrow_right),
//   //         ),
//   //       );
//   // }
// }

// // Card(
// //       child: ExpansionTile(
// //         leading: leading,
// //         title: Text(title),
// //         subtitle: Text(subtitle),
// //         children: [
// //           Padding(
// //             padding: const EdgeInsets.all(15.0),
// //             child: Row(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               children: [
// //                 ElevatedButton(
// //                   style: ElevatedButton.styleFrom(
// //                     primary: Theme.of(context).scaffoldBackgroundColor,
// //                   ),
// //                   onPressed: () => Navigator.pushNamed(context, startroute), 
// //                   child: const Text('Запуск'),
// //                 ),
// //                 const SizedBox(width: 50),
// //                 ElevatedButton(
// //                   style: ElevatedButton.styleFrom(
// //                     primary: Theme.of(context).scaffoldBackgroundColor,
// //                   ),
// //                   onPressed: () => Navigator.pushNamed(context, notesroute), 
// //                   child: const Text('Заметки'),
// //                 ),
// //               ],
// //             ),
// //           )
// //         ]
// //       ),
// //     );



// // List<Widget> _buildList() {
// //     return data
// //         .map(
// //           (Reference e) => InkWell(
// //             child: Padding(
// //               padding: const EdgeInsets.all(8.0),
// //               child: Container(
// //                 decoration: BoxDecoration(
// //                   color: Color(0xffF5F5FA),
// //                   borderRadius: BorderRadius.all(
// //                     Radius.circular(30),
// //                   ),
// //                   boxShadow: [
// //                     BoxShadow(
// //                       color: Colors.black.withOpacity(0.3), //color of shadow
// //                       spreadRadius: 5, //spread radius
// //                       blurRadius: 7, // blur radius
// //                       offset: Offset(2, 3),
// //                     ),
// //                   ],
// //                 ),
// //                 child: ListTile(
// //                   leading: Image.asset(
// //                     'assets/images/logo_flutter.jpg',
// //                     width: 20,
// //                     height: 20,
// //                   ),
// //                   title: Text(
// //                     e.referenceName,
// //                     style: TextStyle(fontSize: 20, fontFamily: "Montserrat"),
// //                   ),
// //                   trailing: Wrap(
// //                     spacing: 12, // space between two icons
// //                     children: const <Widget>[
// //                       Icon(
// //                         Icons.favorite_border,
// //                         size: 30,
// //                       ), // icon-1
// //                       Icon(
// //                         Icons.keyboard_arrow_right_sharp,
// //                         size: 40,
// //                       ), // icon-2
// //                     ],
// //                   ),
// //                   onTap: () {
// //                     Navigator.push(
// //                       context,
// //                       MaterialPageRoute(
// //                         builder: (context) =>
// //                             Detail(e.appbarCenterText, e.bodyText),
// //                       ),
// //                     );
// //                   },
// //                 ),
// //               ),
// //             ),
// //           ),
// //         )
// //         .toList();
// //   }