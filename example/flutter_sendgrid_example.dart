import 'package:flutter_sendgrid/flutter_sendgrid.dart';
import 'package:flutter_sendgrid/src/models/content.dart';
import 'package:flutter_sendgrid/src/models/email.dart';
import 'package:flutter_sendgrid/src/models/recipient.dart';
import 'package:flutter_sendgrid/src/models/personalization.dart';
import 'package:flutter_sendgrid/src/models/sender.dart';

void main() async {
  var emailClient = EmailClient(
      "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");
  try {
    final response = await emailClient.sendEmail(Email(
        personalization: [
          Personalization(
              to: [Recipient(email: "abdealex05@gmail.com", name: "name")],
              subject: "subject")
        ],
        from: Sender(email: "from@gmail.com", name: "from"),
        subject: "subject",
        content: [Content(value: "value")]));
    print('Email delivered ${response.error}');
  } catch (e) {
    print(e);
  }
}
