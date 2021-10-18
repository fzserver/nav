// import 'dart:convert';

// import 'package:http/http.dart' as http;
// import 'package:navneet/model/post.dart';

// class DataService {
//   final _baseUrl = 'jsonplaceholder.typicode.com';

//   Future<List<Post>> getPosts() async {
//     try {
//       final uri = Uri.https(_baseUrl, '/posts');
//       final response = await http.get(uri);
//       final json = jsonDecode(response.body) as List;
//       final posts = json.map((e) => Post.fromJson(e)).toList();
//       return posts;
//     } catch (e) {
//       throw e;
//     }
//   }
// }
