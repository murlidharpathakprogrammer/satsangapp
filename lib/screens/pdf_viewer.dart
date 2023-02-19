import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class PdfViewerScreen extends StatefulWidget {
  final String pdfUrl;
  const PdfViewerScreen(this.pdfUrl, {Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _PdfViewerScreenState(pdfUrl);
}

class _PdfViewerScreenState extends State<PdfViewerScreen> {
  String pdfUrl;
  late File Pfile;
  bool isLoading = false;

  _PdfViewerScreenState(this.pdfUrl);
  Future<void> loadNetwork() async {
    setState(() {
      isLoading = true;
    });
    // var url = 'http://www.pdf995.com/samples/pdf.pdf';
    // final response = await http.get(Uri.parse(url));
    // final bytes = response.bodyBytes;
    // final filename = basename(url);
    // final dir = await getApplicationDocumentsDirectory();
    // var file = File('${dir.path}/$filename');
    // await file.writeAsBytes(bytes, flush: true);
    // var pdfUrl = 'http://www.pdf995.com/samples/pdf.pdf';
    final response = await http.get(Uri.parse(pdfUrl));
    final bytes = response.bodyBytes;
    final filename = basename(pdfUrl);
    final dir = await getApplicationDocumentsDirectory();
    var file = File('${dir.path}/$filename');
    await file.writeAsBytes(bytes, flush: true);
    setState(() {
      Pfile = file;
    });

    print(Pfile);
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    loadNetwork();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? Column(
        mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Center(child: CircularProgressIndicator(color: Colors.amberAccent, backgroundColor: Colors.deepOrange,)),
              Padding(
                padding: EdgeInsets.only(top: 28.0),
                child: Text("पुस्तक लोड हो रहा है\n कृपया प्रतीक्षा करें ...", style: TextStyle(fontSize: 20),),
              )
            ],
          )
          : Container(
        child: Center(
          child: PDFView(
            filePath: Pfile.path,
            swipeHorizontal: true,
          ),
        ),
      ),
    );
  }
}
