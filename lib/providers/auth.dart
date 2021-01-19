import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class Auth with ChangeNotifier {
  String _token;
  String _expiryDate;
  String _userId;

  Future<void> authenticate(String email,String password, String urlSegment) async {
    final url =
        'https://identitytoolkit.googleapis.com/v1/accounts:$urlSegment?key=AIzaSyA7p9xalL1qgglHvvAjWXpcVrSKKep4eMg';

    final response = await http.post(url,
        body: json.encode({
          'email': email,
          'password': password,
          'returnSecureToken': true,
        }));
    print(json.decode(response.body));
  }
  Future<void> signup(String email, String password) async {
    return authenticate(email, password, 'signUp');
    
  }


Future<void> login(String email, String password) async {
  return authenticate(email, password, 'signInWithPassword');
 
}

  
}