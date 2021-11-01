import 'package:flutter/material.dart';

class Noded extends StatelessWidget {
  const Noded({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}

class Node {
  
  int _id;
  String _title;
  String _description;
  String _date;
  int _priority;

  Node(this._title,this._date,this._priority,[this._description]);

  Node.withID(this._id,this._title,this._date,this._priority,[this._description]);

  int get id=> _id;
  String get title=> _title;
  String get description=> _description;
  int get priority=> _priority;
  String get date=> _date;

  set title(String newTitle){
    if (newTitle.length <= 250){
      this._title = newTitle;
    }
  }

  set description(String newDescription){
    if (newDescription.length <= 250){
      this._description = newDescription;
    }
  }

  set priority(int newPriority){
    if (newPriority >=1 && newPriority <= 2){
      this._priority = newPriority;
    }
  }

  set date(String newDate){
    this._date = newDate;
  }
 

 // conver node object into Map object
 Map<String, dynamic> toMap(){
  var map = Map<String, dynamic>();
  if (id != null){
  map['id'] = _id;
  }


  map['title'] = _title;
  map['description'] = _description;
  map['priority'] = _priority;
  map['date'] = _date;
   
  return map;
 }

 //Extract node object from map object
 Node.fromMapObject(Map<String, dynamic> map){
   this._id = map['id'];
   this._title = map['title'];
   this._description = map['decription'];
   this._priority = map['priority'];
   this._date = map['date'];
 }
}

  