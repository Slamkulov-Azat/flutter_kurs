import 'package:flutter/material.dart';
import 'package:flutter_kurs/providers/locale_provider.dart';
import 'package:flutter_kurs/providers/reference_provider.dart';
import 'package:flutter_kurs/screens/lesson_1/lesson_1_note_screen.dart';
import 'package:flutter_kurs/screens/reference/reference_screen.dart';
import 'package:flutter_kurs/widgets/custom_app_bar.dart';
import 'package:flutter_kurs/widgets/note_screen_list_button.dart';
import 'package:provider/provider.dart';

class CounttrackerNotes extends StatelessWidget {
  const CounttrackerNotes({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<RefernceProvider>(builder: (context, provider, snapshot) {
      var _lang = context.watch<LocaleProvider>().locale ??
          Localizations.localeOf(context);
      return Scaffold(
        appBar: CustomAppBar('Заметки'
            //provider.secondReferenceName,
            //textColor: Theme.of(context).primaryColor,
            ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              NoteScreenListButton(
                  title: provider.referenceBank1['AppBar'].referenceName,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Lesson1NoteScreen(
                            secondReferenceText: provider
                                .referenceBank1['AppBar'].referenceText),
                      ),
                    );
                  }),
              //NoteScreenListButton(title: 'Navigation'),
            ],
          ),
        ),
      );
    });
  }
}

// ListTile(
//                     onTap: (){
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) =>
//                           ReferenceScreen(),                    
//                         ),
//                       );
//                       provider.setReference(
//                         provider.referenceBank[index].referenceName,
//                         provider.referenceBank[index].referenceRuText,
//                         provider.referenceBank[index].referenceEnText,
//                       );
//                     },
//                     //leading: leading,
//                     title: Text(
//                       provider.referenceBank[index].referenceName,
//                       //style: TextStyle(fontSize: 20, fontFamily: "Montserrat"),
//                     ),
//                     trailing: Icon(Icons.keyboard_arrow_right),
//                   ),

// DropdownButton(
//                   value: _lang,
//                   onChanged: (Locale val) {
//                     provider.setLocale(val);
//                   },
//                   items: S.delegate.supportedLocales
//                       .map((e) => DropdownMenuItem(
//                     value: e,
//                     child: _title(e.languageCode),
//                   )).toList()),