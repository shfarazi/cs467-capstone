import 'package:capstone/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:capstone/screens/login_screen.dart';
import 'package:capstone/tripready.dart';

class MainScreen extends StatelessWidget {
  static const routeName = 'main_screen';

  @override
  Widget build(BuildContext context) {
    return CapstoneScaffold(
      title: "Trip Ready",
      child: buildMainScreen(context),
  
    );
  }
  Widget buildMainScreen(BuildContext context) {
    return Column(
      children: [Logo(), Text("Trip Like Never Before", style: TextStyle(color: Colors.blue, fontSize: 30, fontFamily: 'Sans-serif', fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),), SizedBox(height: 60), SizedBox(height: 120), signInBtn(context), createAccountBtn(context)],
    );
  }

  Widget signInBtn(BuildContext context) {
  return ButtonTheme(
    minWidth: 300,
    child:RaisedButton(
    color: Colors.blue,
    onPressed: () {
      Navigator.of(context).pushNamed(LoginScreen.routeName);
    },
    child: Text('Sign in')
  )
  );
}
}

Widget createAccountBtn(BuildContext context) {
  return ButtonTheme(
    minWidth: 300,
    child:RaisedButton(
    color: Colors.white,
    onPressed: () {
      Navigator.of(context).pushNamed(RegisterPage.routeName);
    },
    child: Text('Create Account')
  )
  );
}

Widget guestBtn() {
  return ButtonTheme(
    minWidth: 300,
    child:RaisedButton(
    color: Colors.white,
    onPressed: () {},
    child: Text('Enter as a guest')
  )
  );
}




