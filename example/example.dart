import 'package:filepicker_windows/filepicker_windows.dart';
import 'package:path_provider_windows/path_provider_windows.dart';

// Normal file open dialog box example
void main() {
  final file = OpenFilePicker()
    ..filterSpecification = {
      'Word Document (*.doc)': '*.doc',
      'Web Page (*.htm; *.html)': '*.htm;*.html',
      'Text Document (*.txt)': '*.txt',
      'All Files': '*.*'
    }
    ..defaultFilterIndex = 0
    ..defaultExtension = 'doc'
    ..initialDirectory =
        await PathProviderWindows().getApplicationDocumentsPath()
    ..title = 'Select a document';

  final result = file.getFile();
  if (result != null) {
    print(result.path);
  }
}
