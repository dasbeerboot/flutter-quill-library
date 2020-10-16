import 'package:flutter/material.dart';
import 'web_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Easy Web View',
      theme: ThemeData.light(),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// import 'package:flutter/material.dart';
// import 'web_view.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'Flutter WebView',
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//         ),
//         home: HomePage());
//   }
// }

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Home Page"),
//       ),
//       body: Center(
//         child: FlatButton(
//           child: Text("Open Quill Editor"),
//           onPressed: () {
//             Navigator.of(context).push(MaterialPageRoute(
//                 builder: (BuildContext context) => MyWebView(
//                       title: "Quill Editor WebView",
//                       selectedUrl: "https://dasbeerboot.github.io/wysiwyg-editor-examples/subpages/quill.html",
//                     )));
//           },
//         ),
//       ),
//     );
//   }
// }