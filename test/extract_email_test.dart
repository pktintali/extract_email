import 'package:flutter_test/flutter_test.dart';
import 'package:extract_email/extract_email.dart';

void main() {
  String txt = 'test@hotmail.com hello@gmail.com mi@ac.in';
  test('Returns list of Emails', () {
    final mails = ExtractEmail();
    // expect(calculator.addOne(2), 3);
    List emailList = mails.getMail(text: txt);
    for (var mail in emailList) {
      print(mail);
    }
  });
}
