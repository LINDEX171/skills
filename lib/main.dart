import 'package:flutter/material.dart';
import 'package:skills/Listwheelscrollview_page.dart';
import 'package:skills/utils/constants/device_utility.dart';
import 'package:skills/utils/theme/theme.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: TAppTheme.lightTeme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system, // Change automatiquement selon le mode du système
      home: MyForm(),
    );
  }
}


class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulaire de saisie'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Entrez quelque chose',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                TDeviceUtils.hideKeyboard(context);
              },
              child: Text('Soumettre'),
            ),
          ],
        ),
      ),
    );
  }
}