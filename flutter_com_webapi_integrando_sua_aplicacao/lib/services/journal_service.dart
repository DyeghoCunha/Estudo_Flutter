import 'dart:convert';

import 'package:flutter_webapi_first_course/services/http_interceptors.dart';
import 'package:http/http.dart' as http;
import 'package:http_interceptor/http/http.dart';

import '../models/journal.dart';

class JournalService {
  static const String url = "http://192.168.100.11:3000/";
  static const String resource = "journals/";

  http.Client client = InterceptedClient.build(
    interceptors: [LoggingInterceptor()],
  );

  String getURL() {
    return "$url$resource";
  }

  //TODO: Substituir getURL por getURI
  Future<bool> register(Journal journal) async {
    String journalJSON = json.encode(journal.toMap());

    http.Response response = await client.post(
      Uri.parse(getURL()),
      headers: {'Content-type': 'application/json'},
      body: journalJSON,
    );

    if (response.statusCode == 201) {
      return true;
    }

    return false;
  }

Future<List<Journal>> getAll() async {
    http.Response response = await client.get(Uri.parse(getURL()));

    if(response.statusCode != 200){
      throw Exception();
    }
    List<Journal> list = [];

    List<dynamic> listDynamic =  json.decode(response.body);

    for (var jsonMap in listDynamic){
      list.add(Journal.fromMap(jsonMap));
    }

    print(list.length);
    return list;

  }
}
