import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HostRegistrationScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Image(
              image: AssetImage("images/host1.png"),
              width: 390,
              height: 250,
              alignment: Alignment.center,
            ),
            SizedBox(
              height: 1,
            ),
            Text(
              "Register as Host",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 24,
                  fontFamily: "Brand Bold",
                  color: Color(0xff717d8c)),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  SizedBox(
                    height: 1,
                  ),
                  TextField(
                    //       controller: _nameTextEditingController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText: "Name",
                        labelStyle: TextStyle(fontSize: 14),
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 10)),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  TextField(
                    //        controller: _emailTextEditingController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(fontSize: 14),
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 10)),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  TextField(
                    //       controller: _phoneTextEditingController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        labelText: "Phone",
                        labelStyle: TextStyle(fontSize: 14),
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 10)),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  TextField(
                    //            controller: _passwordTextEditingController,
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(fontSize: 14),
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 10)),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  TextField(
                    //            controller: _passwordTextEditingController,
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "Languages",
                        labelStyle: TextStyle(fontSize: 14),
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 10)),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelStyle: TextStyle(fontSize: 14),
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 10),
                        border: OutlineInputBorder(), labelText: "About"),
                    maxLines: 5,
                    //         controller: descriptionTextController,
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  RaisedButton(
                    // onPressed: () {
                    //   if (_nameTextEditingController.text.isEmpty) {
                    //     Util.displayToastMessage(
                    //         "Name cannot be empty", context);
                    //   } else if (!_emailTextEditingController.text
                    //       .contains('@') ||
                    //       _emailTextEditingController.text.isEmpty) {
                    //     Util.displayToastMessage(
                    //         "Email Address is not valid", context);
                    //   } else if (_phoneTextEditingController.text.isEmpty) {
                    //     Util.displayToastMessage(
                    //         "Phone number cannot be empty", context);
                    //   } else if (_passwordTextEditingController.text.length <
                    //       7) {
                    //     Util.displayToastMessage(
                    //         "Password must be at least 6 characters", context);
                    //   } else {
                    //     registerNewUser(context);
                    //   }
                    // },
                    color: Color(0xffd3d9d6),
                    textColor: Colors.white,
                    child: Container(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Next", style: TextStyle(fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),),
                          Icon(Icons.arrow_forward, color: Colors.white,
                            size: 26,),
                        ],
                      ),
                    ),
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(24)),
                  )
                ],
              ),
            ),
            TextButton(
              // onPressed: () {
              //   Navigator.pushNamedAndRemoveUntil(
              //       context, loginScreen.idScreen, (route) => false);
              // },
                child: Text("Already an account? Login here."))
          ],
        ),
      ),
    );
  }
}