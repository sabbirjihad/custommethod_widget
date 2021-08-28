import 'package:flutter/material.dart';
class welcomPage extends StatelessWidget {
  const welcomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: Colors.purple,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                Text('Welcome to XYZ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                  fontSize: 25,
                ),
                ),
                Padding(
                    padding: const EdgeInsets.only(right: 40),
                  child: Image.asset(
                      'assets/image/food_order.png',
                    height: 200,
                  ),
                ),
                SizedBox(height: 10,),
                loginMethod(),
                SizedBox(height: 10,),
                signupMethod(),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget loginMethod(){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: 200,
      height: 50,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 40),
          color: Colors.blue,
          onPressed: () {  },
          child: Text(
            'Login',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
  Widget signupMethod(){
    return  Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: 200,
      height: 50,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 40),
          color: Colors.blue,
          onPressed: () {  },
          child: Text(
            'Sign Up',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
