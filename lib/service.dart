import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sdridetai/email.dart';

class DbConnect {
  final url = Uri.parse('https://sdridetaxi-default-rtdb.firebaseio.com/email.json');
  Future<void> addEmail(Email email, Email password) async {
    http.post(url, body: json.encode({
      
    }));
  }
}
