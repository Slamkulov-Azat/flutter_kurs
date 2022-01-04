import 'package:flutter/material.dart';
import 'package:flutter_kurs/providers/reference_provider.dart';
import 'package:flutter_kurs/screens/reference/reference_screen.dart';
import 'package:provider/provider.dart';

class ReferenceListScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Consumer<RefernceProvider>(
      builder: (context, provider, snapshot) {
        
        return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView.builder(
        itemCount: provider.referenceBank.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                    ReferenceScreen(),                    
                  ),
                );
                provider.setReference(
                  provider.referenceBank[index].referenceName,
                  provider.referenceBank[index].referenceRuText,
                  provider.referenceBank[index].referenceEnText,
                  provider.referenceBank[index].referenceKgText,                              
                );
              },
              //leading: leading,
              title: Text(
                provider.referenceBank[index].referenceName,
                //style: TextStyle(fontSize: 20, fontFamily: "Montserrat"),
              ),
              trailing: const Icon(Icons.keyboard_arrow_right),
            ),
          );
        }
      ),
    );
      });
    
  }
}