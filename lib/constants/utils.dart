import 'dart:io';
import 'package:file_picker/file_picker.dart';

class CustmFilesPicker {
 static Future<List<File>> getFiles() async {
    FilePickerResult? filesPaths = await FilePicker.platform
        .pickFiles(type: FileType.image, allowMultiple: true);
    List<File> files = [];
    if (filesPaths != null) {
      List<PlatformFile> listOfFiles = filesPaths.files;
      for (int i = 0; i < listOfFiles.length; i++) {
        if (listOfFiles[i].path != null) {
          files.add(
            File(listOfFiles[i].path!),
          );
        }
      }
    }
    return files;
  }
}
