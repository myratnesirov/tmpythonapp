import 'package:url_launcher/url_launcher.dart';
import 'dart:core';

weblink(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

final Uri email = Uri(
    scheme: 'mailto',
    path: 'myratnesirov@gmail.com',
    queryParameters: {'subject': 'Turkmence Python Habarlasyk Merkezi'});
