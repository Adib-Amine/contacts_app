

import 'dart:math';

import 'package:contacts_app/model/contact.model.dart';

class ContactsRepository{
  Map<int,Contact> contacts={
    1:Contact(id:1,name:"Saad",profile:"Saad",type: "Student",score:324),
    2:Contact(id:1,name:"Amine",profile:"Adib",type: "Developer",score:627),
    3:Contact(id:1,name:"Simo",profile:"simo",type: "Student",score:337),
    4:Contact(id:1,name:"Yassine",profile:"Yassine",type: "Developer",score:752)
  };

  Future<List<Contact>> allContatcs() async {
    var future = await Future.delayed(Duration(seconds : 1));
    int rnd = new Random().nextInt(10);
    if(rnd>3){
      return contacts.values.toList();
    }else{
      throw new Exception("Internet Error");
    }
  }
  Future<List<Contact>> contactsByType(String type) async {
    var future = await Future.delayed(Duration(seconds : 1));
    int rnd = new Random().nextInt(10);
    if(rnd>3){
      return contacts.values.toList().where((element) => element.type == type);
    }else{
      throw new Exception("Internet Error");
    }
  }
}