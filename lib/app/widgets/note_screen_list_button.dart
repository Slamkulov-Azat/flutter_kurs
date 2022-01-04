import 'package:flutter/material.dart';
// import 'package:flutter_kurs/providers/reference_provider.dart';
// import 'package:provider/provider.dart';

class NoteScreenListButton extends StatelessWidget {
  const NoteScreenListButton({Key key, 
    //this.leading, 
    this.title,
    this.onTap, 
  }) : super(key: key);

  //final Icon leading;
  final String title;
  final Function onTap;

   @override
  Widget build(BuildContext context) {
    return
    Card(
          child: ListTile(
            onTap: onTap,
            //leading: leading,
            //title: Text(title),
            title: Text(title),
            //subtitle: Text(subtitle),
            trailing: const Icon(Icons.keyboard_arrow_right),
          ),
        );
    
  }

  // @override
  // Widget build(BuildContext context) {
  //   context.watch<RefernceProvider>().referenceBank.map((e) =>
  //   Card(
  //         child: ListTile(
  //           //onTap: () => Navigator.pushNamed(context, route),
  //           //leading: leading,
  //           //title: Text(title),
  //           title: Text(e.referenceName),
  //           //subtitle: Text(subtitle),
  //           trailing: const Icon(Icons.keyboard_arrow_right),
  //         ),
  //       )
  //   ).toList();
  // }
}


// context.watch<RefernceProvider>().referenceBank.map((e) => Card(
//       child: ListTile(
//               onTap: (){
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) =>
//                     ReferenceScreen(),                    
//                   ),
//                 );
//                 context.watch<RefernceProvider>().setReference(
//                   e.referenceName,
//                   e.referenceRuText,
//                   e.referenceEnText,
//                 );
//               },
//               //leading: leading,
//               title: Text(e.referenceName),
//               trailing: const Icon(Icons.keyboard_arrow_right),
//             ),
//     )
//     );

    


