import 'package:flutter/services.dart' show rootBundle;

///
/// Read a file and return a String
///
Future<String> getFileData(String path) async {
  return await rootBundle.loadString(path);
}
