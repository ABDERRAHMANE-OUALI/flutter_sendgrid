import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:flutter_sendgrid/src/models/email.dart';
import 'package:flutter_sendgrid/src/services/email_service.dart';

class EmailClient {
  final EmailService _emailService;
  final String _authToken;
  EmailClient(this._authToken)
      : _emailService = ChopperClient(
                baseUrl: Uri.parse("https://api.sendgrid.com/v3/mail"),
                services: [EmailService.create()],
                converter: JsonConverter(),
                errorConverter: JsonConverter())
            .getService<EmailService>();

  Future<Response> sendEmail(Email email) async {
    return await _emailService.sendEmail(email, "Bearer $_authToken");
  }

}
