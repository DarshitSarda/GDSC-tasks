import 'package:flutter/material.dart';
class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  bool isPassHidden=true;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
      ),
      body: SafeArea(
          child: Center(
          child: SingleChildScrollView(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Icon(Icons.login,
          size: 100),

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
                    hintText: 'Username',
                  ),
                ),
              ),
            ),
          ),
            SizedBox(height: 40),
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
                      hintText: 'Email ID',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 22),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: TextFormField(
                    obscureText: isPassHidden,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: 'Password',
                        suffixIcon: InkWell(
                            onTap: _togglePassword,
                            child: Icon(Icons.visibility))),
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return ('required field');
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: TextFormField(
                    obscureText: isPassHidden,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: 'Confirm Password',
                        suffixIcon: InkWell(
                            onTap: _togglePassword,
                            child: Icon(Icons.visibility))),
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return ('required field');
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
              ),
            ),

            MaterialButton(onPressed: () {},
              child: Text('Create Account!',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                fontStyle: FontStyle.italic,
                color: Colors.white
              ),),
              color: Colors.blueAccent,
            ),

          ]

    )
    )
    )
    ),
    );


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
