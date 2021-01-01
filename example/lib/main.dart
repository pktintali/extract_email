import 'package:extract_email/extract_email.dart';

void main() {
  //prepare your string
  String txt = 'This is example test@domain.com emails and mi@ac.in';
  //create object of ExtractMail class
  final mails = ExtractEmail();
  //use getMail method to generate list of emails from String
  List emailList = mails.getMail(text: txt);
  //use the mails for your task
  for (var mail in emailList) {
    print(mail);
  }
}
//Output
//test@domain.com
//mi@ac.in
