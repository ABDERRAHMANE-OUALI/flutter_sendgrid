import 'package:chopper/chopper.dart';
import 'package:flutter_sendgrid/src/models/email.dart';

// This is necessary for the generator to work.
part 'email_service.chopper.dart';

@ChopperApi()
abstract class EmailService extends ChopperService {
  // A helper method that helps instantiating the service. You can omit this method and use the generated class directly instead.
  static EmailService create([ChopperClient? client]) => _$EmailService(client);

  @Post(path: "/send")
  Future<Response> sendEmail(
      @Body() Email email, @Header("Authorization") String authToken);
}
