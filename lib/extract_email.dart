library extract_email;

/// ExtractEmail [class].
class ExtractEmail {
  /// Returns [List<String>] emails from text.
  List<String> getMail({String text}) {
    String txt = text;
    final mailPattern = r"\b[\w\.-]+@[\w\.-]+\.\w{2,4}\b";
    final regEx = RegExp(mailPattern, multiLine: true);
    final obtainedMail =
        regEx.allMatches(txt.toString()).map((m) => m.group(0)).join(' ');
    List emails = obtainedMail.split(' ');
    return emails;
  }
}
