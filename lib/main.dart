import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notees_app/constant.dart';
import 'package:notees_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notees_app/model/note_model.dart';
import 'package:notees_app/simple-bloc_observer.dart';

import 'views/notes_view.dart';


void main() async{

  await Hive.initFlutter();
  Bloc.observer = SimpleblocObserver();
  Hive.registerAdapter(NoteModelAdapter());
 await  Hive.openBox(kNotesBox);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create:(context) => AddNoteCubit())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme:ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'Poppins'

        ),

        home: const NotesView(),
      ),
    );
  }
}


