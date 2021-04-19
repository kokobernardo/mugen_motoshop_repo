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
        '/registerPage': (context) => RegisterPage(),
        '/dashboard': (context) => Dashboard()
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
          if (emailController.text == "admin" && passwordController.text == "123") {
            Navigator.pushReplacementNamed(context, '/dashboard');
          }
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


class Dashboard extends StatefulWidget {

  @override
  _DashboardState createState() => _DashboardState();
}

  List texts=["Seat Cover","Springs","Tires","Headlights","Brake Lights","Rims","Seat Cover","Springs","Tires","Headlights","Brake Lights","Rims"];
  List images = ["https://media.karousell.com/media/photos/products/2018/08/04/motor_seat_cover_1533355066_b3c8c780_progressive.jpg",
                "https://cf.shopee.ph/file/1caccbfc39799ef5e38ec4214d953580",
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTh29lrya7KJ-OjWGfKWzKooVbM9UTqlLff5g&usqp=CAU",
                "https://cf.shopee.ph/file/948b8d1365d5932289900d5037e5465e",
                "https://cf.shopee.ph/file/a3cc0d447c181f74fdb8ca0ac25400a7",
                "https://image.made-in-china.com/43f34j00ZNFQpSOlSqkH/Motor-Parts-19-1-4.jpg",
                "https://media.karousell.com/media/photos/products/2018/08/04/motor_seat_cover_1533355066_b3c8c780_progressive.jpg",
                "https://cf.shopee.ph/file/1caccbfc39799ef5e38ec4214d953580",
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTh29lrya7KJ-OjWGfKWzKooVbM9UTqlLff5g&usqp=CAU",
                "https://cf.shopee.ph/file/948b8d1365d5932289900d5037e5465e",
                "https://cf.shopee.ph/file/a3cc0d447c181f74fdb8ca0ac25400a7",
                "https://image.made-in-china.com/43f34j00ZNFQpSOlSqkH/Motor-Parts-19-1-4.jpg",
                ];

                
  
class CustomWidget extends StatelessWidget {
  CustomWidget(this._index) {
    debugPrint('initialize: $_index');
  }

  


  final int _index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 200,
        color: (_index % 2 != 0) ? Colors.white : Colors.grey,
        child: Center(child: Text(texts.elementAt(_index), style: TextStyle(fontSize: 40))),
      ),
      onTap: (){
        print(texts.elementAt(_index));
      },
    );
  }
}
class _DashboardState extends State<Dashboard> {

  
  String name;

  _DashboardState() {
  }



  @override
        final List<String> list = List.generate(10, (index) => "Text $index");
  Widget build(BuildContext context) {
        return Scaffold(
          body: SafeArea(
            child: CustomScrollView(
              slivers: [
                SliverPadding(
                  padding: EdgeInsets.only(bottom: 8.0), 
                  sliver: SliverAppBar(floating: true,
                    pinned: true,
                    expandedHeight: 150.0,
                    flexibleSpace: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          width: 300,
                          child: FlexibleSpaceBar(
                                title: Text('Mugen Motoshop Dashboard',style: TextStyle(color: Colors.black),),
                          )
                        ),
                        IconButton(
                          icon: Icon(Icons.search),
                          onPressed: (){
                            print("test");
                          },
                        )
                      ]
                    ),
                  ) ),
                  SliverGrid(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200.0,
                      mainAxisSpacing: 100.0,
                      crossAxisSpacing: 20.0,
                      childAspectRatio: 2.0,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return Column(children: <Widget>[
                          Flexible(
                            child: Image.network(images.elementAt(index))
                          ),
                          Container(
                          alignment: Alignment.center,
                          color: Colors.white,
                          child: Text(texts.elementAt(index)),
                        )]);
                      },
                      childCount: texts.length,
                    ),
                  )
              ]
            )
          ),
          endDrawer: Drawer(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("test"),
                SizedBox(height: 20),
                InkWell(
                  child:Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: SizedBox(height: 40, child: Text("Add an Item"),),
                  ),
                  onTap: (){
                    print("test");
                  },
                ),
                IconButton(
                  icon: Icon(Icons.logout),
                  onPressed: () async {
                    Navigator.pushReplacementNamed(context, '/loginpage');
                  },
                ),
              ],
            )
          ),
        );
      }
    }

    
