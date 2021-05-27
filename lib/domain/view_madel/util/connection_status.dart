import 'Dart:io';

class ConnectionStatus {
  static Future<bool> getConectionStatus() async{
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        print('connected');
        return true;
      }
      print('connected?');
      return false;

    } on SocketException catch (_) {
        print('not connected');
        return false;
    }
  }
}
