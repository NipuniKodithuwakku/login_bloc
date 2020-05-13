import 'dart:async';
import './validators.dart';

//here Object is base class
class Bloc extends Object with Validators {
  // final emailController = StreamController<String>();
  // final passwordController = StreamController<String>();

  // we named emailController and passwordController as email and password for the simplycity.
  //also make it private
  final _email = StreamController<String>();
  final _password = StreamController<String>();

  //Add data to stream
  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;

  //retrieve data from stream
  Stream<String> get email => _email.stream.transform(validateEmail);
  Stream<String> get password => _password.stream.transform(validatePassword);

  dispose() {
    _email.close();
    _password.close();
  }
}
