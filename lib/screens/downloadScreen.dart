import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

// ignore: must_be_immutable
class DownloadingScreen extends StatefulWidget {
  String imageUrl;
  dynamic snapshot;
  int index;
  DownloadingScreen(
      {Key? key,
      required this.imageUrl,
      required this.snapshot,
      required this.index})
      : super(key: key);

  @override
  State<DownloadingScreen> createState() => _DownloadingScreenState();
}

class _DownloadingScreenState extends State<DownloadingScreen> {
  Dio dio = Dio();
  double progress = 0;
  int number = 0;

  void setNumber() {
    number++;
  }

  void startDownloading() async {
    String url = widget.imageUrl;
    String fileName =
        '${widget.snapshot.data.data.memes[widget.index].name}.jpg';

    String path = await _getFilePath(fileName);

    await dio.download(
      url,
      path,
      onReceiveProgress: (receivedBytes, totalBytes) {
        setState(() {
          progress = receivedBytes / totalBytes;
        });
      },
      deleteOnError: true,
    ).then((_) {
      Navigator.pop(context);
    });
  }

  Future<String> _getFilePath(String fileName) async {
    final dir = await getApplicationDocumentsDirectory();
    print(dir.path);
    return '${dir.path}/$fileName';
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startDownloading();
    setNumber();
  }

  @override
  Widget build(BuildContext context) {
    String downloadingProgress = (progress * 100).toInt().toString();
    return AlertDialog(
      backgroundColor: Colors.black,
      content: Column(
        children: [
          const CircularProgressIndicator.adaptive(),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Downloading : $downloadingProgress',
            style: const TextStyle(
              color: Colors.red,
              fontSize: 17,
            ),
          )
        ],
      ),
    );
  }
}
