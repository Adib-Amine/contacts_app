

import 'package:bloc/bloc.dart';
import 'package:contacts_app/model/contact.model.dart';
import 'package:contacts_app/repositories/contacts.respo.dart';

abstract class ContactsEvent{}
class LoadAllContactsEvent extends ContactsEvent{}
class LoadStudentEvent extends ContactsEvent{}
class LoadDevelopersEvent extends ContactsEvent{}

enum RequestState {LOADING,LOADED,ERROR,NONE}

class ContactsState{
  List<Contact> contacts;
  RequestState requestState;
  String errorMessage;
  ContactsState({this.contacts,this.requestState,this.errorMessage});

}

class ContactsBloc extends Bloc<ContactsEvent,ContactsState>{
  ContactsRepository contactsRepository;
  ContactsBloc(ContactsState initializer,this.contactsRepository):super(initializer);

  @override
  Stream<ContactsState> mapEventToState(ContactsEvent event) async*{
    if(event is LoadAllContactsEvent){
      yield ContactsState(contacts: state.contacts,requestState: RequestState.LOADING);
      try {
        List<Contact> data = await contactsRepository.allContatcs();
        yield ContactsState(contacts: data,requestState: RequestState.LOADED);
      } catch (e) {
        yield ContactsState(contacts: state.contacts,requestState: RequestState.ERROR,errorMessage: e.message);
      }

    }else if(event is LoadStudentEvent){

    }else if(event is LoadDevelopersEvent){

    }
  }
}
