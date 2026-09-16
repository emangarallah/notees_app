import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notees_app/constant.dart';
import 'package:notees_app/model/note_model.dart';

import 'views/notes_view.dart';


void main() async{

  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
 await  Hive.openBox(kNotesBox);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme:ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins'

      ),

      home: const NotesView(),
    );
  }
}


