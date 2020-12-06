import 'contact.dart';
import 'email_address.dart';

///Email Contact
class EmailContact extends Contact {
  const EmailContact(String fullName, this.email) : super(fullName);

  factory EmailContact.fromMap(Map<dynamic, dynamic> map) =>
      EmailContact(map['fullName'], EmailAddress.fromMap(map['email']));

  /// Email of the contact
  final EmailAddress email;

  @override
  String toString() {
    return 'EmailContact{email: $email}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EmailContact &&
          runtimeType == other.runtimeType &&
          email == other.email;

  @override
  int get hashCode => email.hashCode;
}
