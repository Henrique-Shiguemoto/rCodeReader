import 'package:barcode/reusable_components/rButton.dart';
import 'package:barcode/reusable_components/rIcon.dart';
import 'package:barcode/reusable_components/rText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class BarcodeReaderPage extends StatefulWidget {
  const BarcodeReaderPage({super.key});

  @override
  State<BarcodeReaderPage> createState() => _BarcodeReaderPageState();
}

class _BarcodeReaderPageState extends State<BarcodeReaderPage> {
  String lastReadCode = '';

  readCode() async {
    String code = await FlutterBarcodeScanner.scanBarcode(
      "#FFFFFF",
      "Cancelar",
      false,
      ScanMode.BARCODE,
    );
    setState(() => lastReadCode = code != '-1' ? code : 'Nenhum código lido.');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                rIcon(
                  iconData: Icons.qr_code,
                  size: iconSize,
                  topPadding: MediaQuery.of(context).size.height / 2 - iconSize,
                ),
                const rText(
                  mainText: "Leitor de Barcode e QR Code",
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  topPadding: 24.0,
                ),
              ],
            ),
            if (lastReadCode != '')
              rText(
                mainText: "Código Lido: $lastReadCode",
                fontSize: 18,
              ),
            rButton(
              onPressedFunction: () => readCode(),
              text: const rText(
                mainText: "Ler Código",
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              bottomPadding: 64.0,
              buttonWidth: 200.0,
              buttonHeight: 64.0,
            ),
          ],
        ),
      ),
    );
  }

  static const double iconSize = 96;
}
