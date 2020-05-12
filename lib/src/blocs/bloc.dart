import 'dart:async';

class Bloc {
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
  Stream<String> get email => _email.stream;
  Stream<String> get password => _password.stream;
}
