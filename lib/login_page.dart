import 'package:flutter/material.dart';
import 'package:gdsc1/register.dart';
import 'package:gdsc1/validatescreen.dart';
import 'congo.dart';
import 'forgot_pw_page.dart';


class LoginPage extends StatefulWidget {
   LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
  final GlobalKey<FormState> fkey= GlobalKey<FormState>();
  final formKey = GlobalKey<FormState>();
  String name="";


}

class _LoginPageState extends State<LoginPage> {
  @override
  bool isPassHidden = true;

  get formKey => null;
  get _scaffoldKey => null;
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.amber.shade400,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey ,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Icon(Icons.apple_sharp,
                    size: 80),
                  SizedBox(height: 20),
                  Text('Hello User!', style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 50,
                    fontStyle: FontStyle.italic,

                )
                ),

                SizedBox(height: 15),


                Text('Welcome back', style: TextStyle(
                  fontSize: 30,
                ),
                ),

                SizedBox(height: 15),

                Text('Sign in below!', style: TextStyle(
                  fontSize: 18,
                ),),

                SizedBox(height: 10),
               //username textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                          labelText: "Username",
                        ),
                        validator: (value){
                          if(value!.isEmpty ||!RegExp(r'^[a-z A-Z]+$').hasMatch(value!)){
                            return "Enter correct username";
                          }
                          else{
                            return null;
                          }
                        },
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 20,
                ),
               //email textfield
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffF9F5EB),
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty ||!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,5}') .hasMatch(value!))
                              {
                                return 'Please enter correct email address';
                              }
                              else return null;
                            },
                            decoration: InputDecoration(
                              labelText: 'Email',
                            )),
                      ),
                    ),
                  ),
                  SizedBox(height: 0),

                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          obscureText: isPassHidden,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              labelText: 'Password',
                              suffixIcon: InkWell(
                                onTap: _togglePassword,
                                  child: Icon(Icons.visibility))),
                          validator: (value) {
                            if (value != null && value.isEmpty ||!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$') .hasMatch(value!)) {
                              return ('Required field');
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                    ),
                  ),
                SizedBox(
                  height: 20,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: ()
              {
              if(formKey.currentState.validate()){

              }
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)
              {
              return validatescreen();
              }
              ),);
              },
                      child: Text('Submit Details', style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                      ),
                      ),
                    ),

                  ],
                ),
                SizedBox(
                  height: 10
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)
                          {
                            return ForgotPasswordPage();
                          },
                          ),);
                },
                        child: Text('Forgot password?',style:
                          TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 10,
                ),


                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(color: Colors.amber.shade900,
                     borderRadius: BorderRadius.circular(12)),
                    child: Center(
                      child: GestureDetector(
                        onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)
    {
    return GreetingPage();
    }
    ),);
    },
                        child: Text('Sign in',
                          style: TextStyle(color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          ),
                     ),

                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                    ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)
                            {
                              return RegisterPage();
                            },
                            ),);
                          },
                          child: Text('New here? Register Now!',style:
                          TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),),
                        ),
                      ],
                    ),
                  ),


              ],
        ),
            ),
          ),
      )
          ));

  }
  void _togglePassword() {
    if (isPassHidden == true) {
      isPassHidden = false;
    } else {
      isPassHidden = true;
    }
    setState(() {});
  }
}



