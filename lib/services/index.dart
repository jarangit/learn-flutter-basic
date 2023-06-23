import 'dart:convert';

import 'package:http/http.dart' as http;
import '../types/exChangeRate.dart';

Future<ExChangeRate> getExchange() async {
  const token = "c33356a999msh66c3bec0da47714p142a91jsn24c1b3083614";
  print("getting data api");
  try {
    final res = await http.get(
      Uri.parse("https://exchangerate-api.p.rapidapi.com/rapid/latest/THB"),
      headers: {'X-RapidAPI-Key': '$token'},
    );
    if (res.statusCode == 200) {
      // แปลงข้อมูล JSON เป็น List<dynamic>
      ExChangeRate data = await exChangeRateFromJson(res.body);
      return data;
    } else {
      throw Exception('เกิดข้อผิดพลาดในการเรียก API');
    }
  } catch (e) {
    throw ('$e');
  }
}
