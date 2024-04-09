// ignore_for_file: avoid_print

import 'model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

const baseUrl = "http://localhost:8000";
const endpoint = "$baseUrl/panic";

Future<List<Journal>> getJournalList() async {
  List<Journal> entries = [];
  var url = Uri.parse("$endpoint/getListOfJournals");

  var res = await http.get(url);
  print(res.body);
  // print(json);
  if (res.statusCode == 200) {

    var jsons = jsonDecode(res.body);
    
    for (var json in jsons) {
      entries.add(Journal.fromJson(json));
    }

  }
  
  return entries;
  
}

Future<Journal?> getJournal(int entryID) async {
  var url = Uri.parse("$endpoint$entryID/");

  var res = await http.get(url);
  // print(res.body);
  // print(json);
  if (res.statusCode == 200) {
    var json = jsonDecode(res.body);

    return Journal.fromJson(json);
  }
  return null;
}


