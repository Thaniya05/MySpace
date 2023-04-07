import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'dart:io';

Future<void> creatPDF() async {
  final pdf = pw.Document();

  pdf.addPage(pw.Page(
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context contexts) {
        return pw.Center(
            child: pw.Container(
                width: 300,
                height: 300,
                color: PdfColor.fromRYB(0.1, 0.6, 0.1)));
      }));

  final file = File('example.pdf');
  await file.writeAsBytes(await pdf.save());
}

/*
_buildPDF(font) => pw.Padding(
      padding: pw.EdgeInsets.all(20.0),
      child: pw.Column(
        children: [
          pw.Container(
            width: 400,
            height: 300,
            color: PdfColor(0.2, 0.6, 0.2, 0.7),
            margin: pw.EdgeInsets.all(20.0),
            child: pw.Row(
              children: [
                pw.Expanded(
                  flex: 3,
                  child: pw.Column(
                    children: [
                      pw.Text('Thaniya Boonbutra',
                          style: pw.TextStyle(font: font)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );*/
