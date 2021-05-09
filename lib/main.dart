import 'package:contacts_app/bloc/contacts.bloc.dart';
import 'package:contacts_app/repositories/contacts.respo.dart';
import 'package:contacts_app/ui/contacts/ContactsPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ContactsBloc(
            ContactsState(contacts: [],errorMessage: '',requestState: RequestState.NONE),
            new ContactsRepository())
        )
      ],
      child: MaterialApp(
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        routes: {
          '/contacts':(context)=>ContactsPage(),
        },
        initialRoute: '/contacts',
      ),
    );
  }
}
