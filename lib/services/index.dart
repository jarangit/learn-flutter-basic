import 'dart:convert';

import 'package:http/http.dart' as http;

Future<List> getExchange() async {
  const token = "c33356a999msh66c3bec0da47714p142a91jsn24c1b3083614";
  print("getting data api");
  var res = await http.get(
    Uri.parse("https://exchangerate-api.p.rapidapi.com/rapid/latest/USD"),
    headers: {'X-RapidAPI-Key': '$token'},
  );

  if (res.statusCode == 200) {
    print(res.body);
    // แปลงข้อมูล JSON เป็น List<dynamic>
    // List<dynamic> data = jsonDecode(res.body);
    return [];
  } else {
    throw Exception('เกิดข้อผิดพลาดในการเรียก API');
  }
}
