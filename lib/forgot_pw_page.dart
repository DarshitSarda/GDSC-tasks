import 'package:flutter/material.dart';
class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Enter your Email and we will send you a password reset link',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),),
          SizedBox(height: 20),
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
                child: TextField(

                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Email Id',
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          MaterialButton(onPressed: () {},
            child: Text('Reset Password'),
            color: Colors.deepPurple[200],
          ),
        ],
      ),
    );
  }
}
