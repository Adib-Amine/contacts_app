import 'package:contacts_app/bloc/contacts.bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Contacts'),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RaisedButton(
                    onPressed: () => {
                      context.read<ContactsBloc>().add(LoadAllContactsEvent())
                    },
                    child: Text(
                      "All Contacts",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.deepOrange,
                  ),
                  RaisedButton(
                    onPressed: () => {},
                    child: Text(
                      "All Student",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.deepOrange,
                  ),
                  RaisedButton(
                    onPressed: () => {},
                    child: Text(
                      "All Developers",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.deepOrange,
                  )
                ],
              ),
            )
          ],
        ));
  }
}
