import 'package:encrypt/encrypt.dart';

final key = Key.fromUtf8('cggKOdNki8f6f0z7NIfv2KSN27GKrBDC'); //32 chars
final iv = IV.fromUtf8('LzcphHlL4jDQebYF'); //16 chars

//encrypt
String encryptMyData(String text) {
  final e = Encrypter(AES(key, mode: AESMode.cbc));
  final encrypted_data = e.encrypt(text, iv: iv);
  return encrypted_data.base64;
}

//dycrypt
String decryptMyData(String text) {
  final e = Encrypter(AES(key, mode: AESMode.cbc));
  final decrypted_data = e.decrypt(Encrypted.fromBase64(text), iv: iv);
  return decrypted_data;
}
