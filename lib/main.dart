import 'package:barcode/pages/barcodeReaderPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'QRCode Demo',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      home: BarcodeReaderPage(),
    );
  }
}
