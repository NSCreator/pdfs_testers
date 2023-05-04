import 'package:flutter/material.dart';
import 'package:pdftron_flutter/pdftron_flutter.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String documentPath = 'assets/sample.pdf'; // Replace with your PDF file path

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SfPdfViewer.asset(
        documentPath,
        pageSpacing: 10,
        initialZoomLevel: 1.5,
        pageLayoutMode: PdfPageLayoutMode.single,
        canShowScrollHead: true,
        canShowScrollStatus: true,
        enableDocumentLinkAnnotation: true,

      )
    );
  }
}
