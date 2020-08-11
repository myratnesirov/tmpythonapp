import 'package:url_launcher/url_launcher.dart';
import 'dart:core';

instagram() async {
  const url = 'https://instagram.com/turkmencepython';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

twitter() async {
  const url = 'https://twitter.com/@turkmencepython';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

medium() async {
  const url = 'https://medium.com/@myratnesirov';
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
