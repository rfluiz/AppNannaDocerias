import 'package:agenda_de_contatos/helpers/contact_helper.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  ContactHelper helper = ContactHelper();

  @override
  void initState(){
    super.initState();

   /* Contact c = Contact();
    c.name = "Gabriel Bazante";
    c.email = "gabrielbazante7@gmail.com";
    c.phone = "(81)9-9784-4512";
    c.img = "imgTeste";

    helper.saveContact(c);*/

   helper.getAllContacts().then((list){
     print(list);
   });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
