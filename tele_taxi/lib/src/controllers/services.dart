import 'package:tele_taxi/src/controllers/c_request_service.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
class Services {
  Future<String> createRequestService(CRequestService requestService) async {
    final response = await http.post(
      Uri.parse('https://jsonplaceholder.typicode.com/albums'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'phone': requestService.phone,
        'address': requestService.address,
        'uidNotification': requestService.uidNotification,
      }),
    );

    if (response.statusCode == 201) {
      // If the server did return a 201 CREATED response,
      return jsonDecode(response.body)['state'].toString();
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      throw Exception('Failed to create album.');
    }
  }
}