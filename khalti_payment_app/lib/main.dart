import 'package:flutter/material.dart';
import 'package:khalti_flutter/khalti_flutter.dart';
import './homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return KhaltiScope(
      publicKey: 'test_public_key_f9b63153748a4647b27862008a025378',
      enabledDebugging: true,
      
      builder: (context, navKey) {
        return MaterialApp(
          title: 'Khalti Payment',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const Homepage(),
          navigatorKey: navKey,
          localizationsDelegates: const [KhaltiLocalizations.delegate],
        );
      },);
  }
}
