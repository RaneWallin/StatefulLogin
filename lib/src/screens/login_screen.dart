import 'package:flutter/material.dart';
import '../widgets/margin.dart';
import '../mixins/validation_mixin.dart';

/// Creates a generic login screen
class LoginScreen extends StatefulWidget {
  LoginScreenState createState() {
    return LoginScreenState();
  } // end createState
} // end LoginScreen

class LoginScreenState extends State<LoginScreen> with ValidationMixin {
  /// Access form instance properties and methods
  final GlobalKey<FormState> formKey = new GlobalKey<FormState>();

  String email = "";
  String password = "";

  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: formKey,
        child: Column(
          children: [
            emailField(),
            passwordField(),
            Margin(top: 10.0),
            submitButton(),
          ], // children array
        ),
      ),
      margin: EdgeInsets.all(20.0),
    );
  } // end build

  /// Accepts a user's email address
  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email Address',
        hintText: 'you@example.com',
      ),
      validator: validateEmail, // validator
      onSaved: (String value) {
        email = value;
      }, // onSaved
    );
  } // end emailField

  /// Accepts a user's password
  Widget passwordField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Password',
      ),
      validator: validatePassword, // validator
      onSaved: (String value) {
        password = value;
      }, // onSaved
      obscureText: true,
    );
  } // end passwordField

  /// Submits the form
  Widget submitButton() {
    return RaisedButton(
      child: Text('Submit'),
      onPressed: () {
        if (formKey.currentState.validate()) {
          formKey.currentState.save();
          formKey.currentState.reset();
        } // end if
      }, // onPressed
      color: Colors.cyan,
    );
  }
} // end LoginScreenState
