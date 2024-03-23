// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class NetworkHelper {
//   NetworkHelper(this.url);

//   final String url;

//   Future getData() async {
//     http.Response response = await http.get(url as Uri );

//     if (response.statusCode == 200) {
//       String data = response.body;

//       return jsonDecode(data);
//     } else {
//       print(response.statusCode);
//     }
//   }
// }


import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    // Convert the string URL to a Uri object
    Uri uri = Uri.parse(url);

    // Use the Uri object with http.get() method
    http.Response response = await http.get(uri);

    if (response.statusCode == 200) {
      String data = response.body;

      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
