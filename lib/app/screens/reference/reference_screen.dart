import 'package:flutter/material.dart';
import 'package:flutter_kurs/app/providers/locale_provider.dart';
import 'package:flutter_kurs/app/providers/reference_provider.dart';
import 'package:flutter_kurs/app/widgets/custom_app_bar.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class ReferenceScreen extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Consumer<RefernceProvider>(
      builder: (context, provider, snapshot) {
        var _lang = context.watch<LocaleProvider>().locale ?? Localizations.localeOf(context);
        return Scaffold(
      appBar: CustomAppBar(
        provider.referenceName,
        //textColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            //child: provider.getReferenceText(_lang),
            child: Text(
              provider.getReferenceText(_lang),
              style: const TextStyle(
                //color: Colors.black,
                fontSize: 20.0,
              ),
            ),
          ),
        ),
      ),
    );
      });
    
  }
}
