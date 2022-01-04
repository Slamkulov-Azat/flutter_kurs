import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kurs/generated/l10n.dart';
import 'package:flutter_kurs/app/providers/locale_provider.dart';
import 'package:flutter_kurs/app/providers/switch_provider.dart';

import 'package:provider/provider.dart';

// ignore: use_key_in_widget_constructors
class MainDrawer extends StatelessWidget {

//bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    
  _title(String val) {
      switch (val) {
        case 'en':
          return const Text(
            'English',
            style: TextStyle(fontSize: 16.0),
          );
        case 'ru':
          return const Text(
            'Русский',
            style: TextStyle(fontSize: 16.0),
          );
        case 'it':
          return const Text(
            'Кыргыз',
            style: TextStyle(fontSize: 16.0),
          );
        default:
          return const Text(
            'Русский',
            style: TextStyle(fontSize: 16.0),
          );
      }
    } 
    return Consumer<LocaleProvider>(
      builder: (context, provider, snapshot) {
        var _lang = provider.locale ?? Localizations.localeOf(context);
        return SafeArea(
          child: Drawer(
            elevation: 5.0,
            child: ListView(
              children:  [
                Container(
                  color: AppBarTheme.of(context).backgroundColor,
                  child: Center(
                    child: DrawerHeader(
                      padding: EdgeInsets.zero,
                      decoration: const BoxDecoration(),
                      child: Image.asset('assets/images/load/logo.png')
                    ),
                  ),
                ),
                Card(
                  child: ExpansionTile(
                    //leading: leading,
                    title: Text(S.of(context).drawerExpansionTileText),
                    //subtitle: Text(subtitle),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ListTile(
                              title: Text(S.of(context).language, style: const TextStyle(fontSize: 16)),
                              trailing:DropdownButton(
                                value: _lang,
                                onChanged: (Locale val) => provider.setLocale(val),
                                items: S.delegate.supportedLocales.map(
                                  (e) => DropdownMenuItem(
                                    value: e,
                                     child: _title(e.languageCode),
                                  ),
                                ).toList()),
                            ),
                            const SizedBox(width: 50),
                            ListTile(
                              title: Text(S.of(context).theme, style: const TextStyle(fontSize: 16)),
                              trailing: Switch(
                                value: context.watch<SwitcProvider>().getIsSwitched, 
                                onChanged: (_newValue){                   
                                  context.read<SwitcProvider>().setIsSwitched(_newValue);
                                  if (_newValue){
                                    AdaptiveTheme.of(context).setDark();
                                  }else {
                                    AdaptiveTheme.of(context).setLight();
                                  }
                                },
                                activeTrackColor: Colors.red,
                                activeColor: Colors.blue,
                              ),
                            ),   
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    ); 
  } 
}
