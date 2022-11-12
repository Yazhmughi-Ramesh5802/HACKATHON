// import 'package:biblio/add_books.dart';
// import 'package:biblio/all_topic1.dart';
// import 'package:biblio/API_services.dart';
// import 'package:biblio/articles.dart';
// import 'package:biblio/books.dart';
// import 'package:biblio/borrowPage.dart';
// import 'package:biblio/catalogue.dart';
// import 'package:biblio/color.dart';
// import 'package:biblio/lists.dart';
// import 'package:biblio/main.dart';
// import 'package:biblio/main_page.dart';
// import 'package:biblio/question.dart';
// import 'package:biblio/recommended.dart';
// import 'package:biblio/search.dart';
// import 'package:biblio/Usermodel.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
//import 'package:glassmorphism/glassmorphism.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_rating_bar/flutter_rating_bar.dart';
//import 'package:intl/intl.dart';

//import 'package:firebase_core/firebase_core.dart';
import 'package:demo_hack/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.actorTextTheme(Theme.of(context).textTheme),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Healer - the virtual Care taker',
      home: main_page(),
    );
  }
}
