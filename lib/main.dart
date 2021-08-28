import 'package:custommethod_loginpage/welcome_page.dart';
import 'package:flutter/material.dart';
void main(){
  return runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Custom Method',
    theme: ThemeData(
      primarySwatch: Colors.purple,
      scaffoldBackgroundColor: Colors.white,
    ),
    home: welcomPage(),
  )
  );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Method Widget Example'),
      ),body: SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 50),
          child: Column(
            children: [
              Text('LogIn Page',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 25,
                    color: Colors.purple
                ),
              ),
              SizedBox(height: 20,),
              loginForm(),
            ],
          ),
        ),
      ),
    ),

    );
  }
  Widget loginForm(){
    return Container(
      height: 250,
      width: 300,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.all(Radius.circular(15))
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter Your User Name',
                labelText: 'User Name',
                labelStyle: TextStyle(
                  color: Colors.orange,
                  fontSize: 14
                ),
                hintStyle: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 14
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
                prefixIcon: Icon(Icons.account_circle)
              ),
              keyboardType: TextInputType.text,
            ),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Enter Your Password',
                  labelText: 'Password',
                  labelStyle: TextStyle(
                      color: Colors.orange,
                      fontSize: 14
                  ),
                  hintStyle: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 14
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),
                  prefixIcon: Icon(Icons.account_circle)
              ),
              keyboardType: TextInputType.text,
              obscureText: true,
              obscuringCharacter: '*',
            ),
            SizedBox(height: 25,),
            ElevatedButton(
                onPressed: (){print('On Pressed');},
                child: Text('Login')
            )
          ],
        ),
      ),
    );
  }
}




















