import 'package:flutter/material.dart';
import 'package:flutter_kurs/generated/l10n.dart';

class HomeScreenListButton extends StatelessWidget {
  const HomeScreenListButton({Key key, 
    this.leading, 
    this.title, 
    this.subtitle, 
    this.startroute,
    this.notesroute,
  }) : super(key: key);

  final Icon leading;
  final String title;
  final String subtitle;
  final String startroute;
  final String notesroute;

  @override
  Widget build(BuildContext context) {
    return  Card(
      child: ExpansionTile(
        leading: leading,
        title: Text(title),
        subtitle: Text(subtitle),
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).scaffoldBackgroundColor,
                  ),
                  onPressed: () => Navigator.pushNamed(context, startroute), 
                  child: Text(S.of(context).homeScreenListButton_OnPressed_1),
                ),
                const SizedBox(width: 50),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).scaffoldBackgroundColor,
                  ),
                  onPressed: () => Navigator.pushNamed(context, notesroute), 
                  child: Text(S.of(context).homeScreenListButton_OnPressed_2),
                ),
              ],
            ),
          )
        ]
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return  Card(
  //         child: ListTile(
  //           onTap: () => Navigator.pushNamed(context, route),
  //           leading: leading,
  //           title: Text(title),
  //           subtitle: Text(subtitle),
  //           trailing: Icon(Icons.keyboard_arrow_right),
  //         ),
  //       );
  // }
}

