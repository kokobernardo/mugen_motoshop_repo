import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/loginpage',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/loginpage': (context) => LoginPage(title: 'Mugens Motoshop'),
        '/registerPage': (context) => RegisterPage()
      },
    );
  }
}


// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  
  final String title;
  LoginPage(
    {
      this.title
    }
  );

  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  Widget emailField, passwordField, loginButton;

  @override
  Widget build(BuildContext context) {


    emailField = TextField(
      controller: emailController,
      obscureText: false,
      style: TextStyle(
        fontFamily: 'Montserrat', 
        fontSize: 20.0
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        hintText: "Email",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0)
        )
      ),
    );


    passwordField = TextField(
      controller: passwordController,
      obscureText: true,
      style: TextStyle(
        fontFamily: 'Montserrat', 
        fontSize: 20.0
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        hintText: "Password",
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(32.0)
        )
      ),
    );

    loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xFFD32F2F),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          print("email : " + emailController.text);
          print("password : " + passwordController.text);
        },
        child: Text("Login",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Montserrat', 
            fontSize: 20.0,
            color: Colors.white, 
            fontWeight: FontWeight.bold
          )
        ),
      ),
    );

    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Text(
                  title, 
                  style: TextStyle(
                    fontFamily: 'Montserrat', 
                    fontSize: 20.0,
                    color: Colors.black, 
                    fontWeight: FontWeight.bold
                  )
                ),

                SizedBox(
                  height: 15.0
                ),

                emailField,

                SizedBox(
                  height: 15.0
                ),

                passwordField,

                SizedBox(
                  height: 5.0,
                ),

                loginButton,

                SizedBox(
                  height: 15.0,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () { Navigator.pushNamed(context, '/registerPage'); },
                      child: new Text("Don't have an account?   Create Now"),
                    )
                  ]
                )

              ]
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class RegisterPage extends StatelessWidget {

  TextEditingController emailController = new TextEditingController();
  TextEditingController firstNameController = new TextEditingController();
  TextEditingController lastNameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController verifyPasswordController = new TextEditingController();

  Widget firstNameField, lastNameField,emailField,passwordField,verifyPasswordField,registerButton;

  @override
  Widget build(BuildContext context) {
    firstNameField = TextField(
      controller: firstNameController,
      obscureText: false,
      style: TextStyle(
        fontFamily: 'Montserrat', 
        fontSize: 20.0
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        hintText: "First Name",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0)
        )
      ),
    );

    lastNameField = TextField(
      controller: lastNameController,
      obscureText: false,
      style: TextStyle(
        fontFamily: 'Montserrat', 
        fontSize: 20.0
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        hintText: "Last Name",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0)
        )
      ),
    );

    emailField = TextField(
      controller: emailController,
      obscureText: false,
      style: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 20.0
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        hintText: "Email",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)
        )
      ),
    );

    passwordField = TextField(
      controller: passwordController,
      obscureText: true,
      style: TextStyle(
        fontFamily: 'Montserrat', 
        fontSize: 20.0
        ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        hintText: "Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0)
        )
      ),
    );

    verifyPasswordField = TextField(
      controller: verifyPasswordController,
      obscureText: true,
      style: TextStyle(
        fontFamily: 'Montserrat', 
        fontSize: 20.0
      ),
      decoration: InputDecoration(
      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      hintText: "Verify Password",
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    registerButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xFFD32F2F),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {},
        child: Text("Register",
          textAlign: TextAlign.center,
          style: TextStyle(fontFamily: 'Montserrat', fontSize: 20.0,
          color: Colors.white, fontWeight: FontWeight.bold)
        ),
      ),
    );

    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Text(
                  "Registration", 
                  style: TextStyle(
                    fontFamily: 'Montserrat', 
                    fontSize: 20.0,
                    color: Colors.black, fontWeight: FontWeight.bold
                  )
                ),

                SizedBox(
                  height: 15.0
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      child: firstNameField
                    ),
                    Flexible(
                      child: lastNameField
                    )
                  ]
                ),

                SizedBox(
                  height: 5.0
                ),

                emailField,

                SizedBox(
                  height: 5.0
                ),

                passwordField,

                SizedBox(
                  height: 5.0,
                ),

                verifyPasswordField,
                
                SizedBox(
                  height: 5.0,
                ),

                registerButton,

                SizedBox(
                  height: 15.0,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/loginpage');
                      },
                      child: new Text("Have an account already?   Login now"),
                    )
                  ]
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
