import 'package:flutter/material.dart';
import 'package:flutter_kurs/providers/locale_provider.dart';
import 'package:flutter_kurs/providers/reference_provider.dart';
import 'package:flutter_kurs/widgets/custom_app_bar.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class Lesson1NoteScreen extends StatelessWidget {
   Widget secondReferenceText;
  //  Image secondReferenceEnText;
  //  Image secondReferenceKgText;
  Lesson1NoteScreen({
    Key key,
    this.secondReferenceText,
    // this.secondReferenceEnText,
    // this.secondReferenceKgText
  }) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return Consumer<RefernceProvider>(
      builder: (context, provider, snapshot) {
        var _lang = context.watch<LocaleProvider>().locale ?? Localizations.localeOf(context);
        return Scaffold(
      appBar: CustomAppBar(
        'fdfdf'
        //provider.secondReferenceName,
        //textColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            //child: provider.getReferenceText(_lang),
            child: secondReferenceText,
              
          ),
        ),
      ),
    );
      });
    
  }
}
